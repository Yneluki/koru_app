import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:koru/domain/auth/auth_service.dart';
import 'package:koru/domain/common/failures.dart';
import 'package:koru/domain/expense/expense_repository.dart';
import 'package:koru/domain/expense/model/expense_amount.dart';
import 'package:koru/domain/expense/model/expense_description.dart';
import 'package:koru/domain/store/koru_state_service.dart';
import 'package:uuid/uuid.dart';

part 'create_expense.freezed.dart';

Future<Either<CreateExpenseFailure, UuidValue>> create_expense({
  required UuidValue group,
  required String description,
  required String amount,
  required AuthService authService,
  required KoruStateService stateService,
  required ExpenseRepository repository,
}) async {
  final maybeDescription = ExpenseDescription.build(description);
  final maybeAmount = ExpenseAmount.build(amount);
  List<InputDataFailure> failures = List.empty(growable: true);
  final validDescription = maybeDescription.fold((l) {
    failures.add(l);
    return null;
  }, id);
  final validAmount = maybeAmount.fold((l) {
    failures.add(l);
    return null;
  }, id);
  if (failures.isEmpty) {
    final user = authService.get_signed_in_user();
    return user.fold(
      () => left(
        const CreateExpenseFailure.expenseRepositoryError(
          failure: ExpenseRepositoryFailure.unauthorized(),
        ),
      ),
      (user) async {
        final res = await repository.create_expense(
            group: group,
            description: validDescription!,
            amount: validAmount!,
            user: user);
        return res.fold(
          (l) {
            l.maybeWhen(
              orElse: () => null,
              unauthorized: () => stateService.sessionTimeout(),
            );
            return left(
              CreateExpenseFailure.expenseRepositoryError(
                failure: l,
              ),
            );
          },
          (r) {
            stateService.expenseCreated();
            return right(r);
          },
        );
      },
    );
  } else {
    return left(CreateExpenseFailure.invalidData(
      failures: failures,
    ));
  }
}

@freezed
class CreateExpenseFailure with _$CreateExpenseFailure {
  const factory CreateExpenseFailure.invalidData({
    required List<InputDataFailure> failures,
  }) = InvalidData;

  const factory CreateExpenseFailure.expenseRepositoryError({
    required ExpenseRepositoryFailure failure,
  }) = ExpenseRepositoryError;
}

extension CreateExpenseFailureX on CreateExpenseFailure {
  String errorMessage() {
    return when(
      invalidData: (failures) =>
          failures.map((e) => e.errorMessage()).join("\n"),
      expenseRepositoryError: (f) => f.errorMessage(),
    );
  }
}

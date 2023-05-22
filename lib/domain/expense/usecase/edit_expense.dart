import 'dart:math';

import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:koru/domain/auth/auth_service.dart';
import 'package:koru/domain/common/failures.dart';
import 'package:koru/domain/expense/expense_repository.dart';
import 'package:koru/domain/expense/model/expense.dart';
import 'package:koru/domain/expense/model/expense_amount.dart';
import 'package:koru/domain/expense/model/expense_description.dart';
import 'package:koru/domain/store/koru_state_service.dart';
import 'package:uuid/uuid.dart';

part 'edit_expense.freezed.dart';

Future<Either<EditExpenseFailure, Unit>> edit_expense({
  required UuidValue group,
  required Expense expense,
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
        const EditExpenseFailure.expenseRepositoryError(
          failure: ExpenseRepositoryFailure.unauthorized(),
        ),
      ),
      (user) async {
        final res = await repository.edit_expense(
            group: group,
            expense: expense,
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
              EditExpenseFailure.expenseRepositoryError(
                failure: l,
              ),
            );
          },
          (r) {
            stateService.expenseUpdated();
            return right(r);
          },
        );
      },
    );
  } else {
    return left(EditExpenseFailure.invalidData(
      failures: failures,
    ));
  }
}

@freezed
class EditExpenseFailure with _$EditExpenseFailure {
  const factory EditExpenseFailure.invalidData({
    required List<InputDataFailure> failures,
  }) = InvalidData;

  const factory EditExpenseFailure.expenseRepositoryError({
    required ExpenseRepositoryFailure failure,
  }) = ExpenseRepositoryError;
}

extension EditExpenseFailureX on EditExpenseFailure {
  String errorMessage() {
    return when(
      invalidData: (failures) =>
          failures.map((e) => e.errorMessage()).join("\n"),
      expenseRepositoryError: (f) => f.errorMessage(),
    );
  }
}

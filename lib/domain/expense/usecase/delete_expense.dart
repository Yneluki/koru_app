import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:koru/domain/auth/auth_service.dart';
import 'package:koru/domain/expense/expense_repository.dart';
import 'package:koru/domain/expense/model/expense.dart';
import 'package:koru/domain/store/koru_state_service.dart';
import 'package:uuid/uuid.dart';

part 'delete_expense.freezed.dart';

Future<Either<DeleteExpenseFailure, Unit>> delete_expense({
  required UuidValue group,
  required Expense expense,
  required AuthService authService,
  required KoruStateService stateService,
  required ExpenseRepository repository,
}) async {
  final user = authService.get_signed_in_user();
  return user.fold(
    () => left(
      const DeleteExpenseFailure.expenseRepositoryError(
        failure: ExpenseRepositoryFailure.unauthorized(),
      ),
    ),
    (user) async {
      final res = await repository.delete_expense(
        group: group,
        expense: expense,
        user: user,
      );
      return res.fold(
        (l) {
          l.maybeWhen(
            orElse: () => null,
            unauthorized: () => stateService.sessionTimeout(),
          );
          return left(
            DeleteExpenseFailure.expenseRepositoryError(
              failure: l,
            ),
          );
        },
        (r) {
          stateService.expenseDeleted();
          return right(unit);
        },
      );
    },
  );
}

@freezed
class DeleteExpenseFailure with _$DeleteExpenseFailure {
  const factory DeleteExpenseFailure.expenseRepositoryError({
    required ExpenseRepositoryFailure failure,
  }) = ExpenseRepositoryError;
}

extension DeleteExpenseFailureX on DeleteExpenseFailure {
  String errorMessage() {
    return when(
      expenseRepositoryError: (f) => f.errorMessage(),
    );
  }
}

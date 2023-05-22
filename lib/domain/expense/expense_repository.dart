import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:koru/domain/auth/model/auth_user.dart';
import 'package:koru/domain/auth/model/email_address.dart';
import 'package:koru/domain/auth/model/user_name.dart';
import 'package:koru/domain/expense/model/expense.dart';
import 'package:koru/domain/expense/model/expense_amount.dart';
import 'package:koru/domain/expense/model/expense_description.dart';
import 'package:koru/domain/group/model/group_member.dart';
import 'package:koru/domain/group/model/member_color.dart';
import 'package:uuid/uuid.dart';

part 'expense_repository.freezed.dart';

abstract class ExpenseRepository {
  Future<Either<ExpenseRepositoryFailure, UuidValue>> create_expense({
    required UuidValue group,
    required ExpenseDescription description,
    required ExpenseAmount amount,
    required AuthUser user,
  });
  Future<Either<ExpenseRepositoryFailure, Unit>> delete_expense({
    required UuidValue group,
    required Expense expense,
    required AuthUser user,
  });
  Future<Either<ExpenseRepositoryFailure, Unit>> edit_expense({
    required UuidValue group,
    required Expense expense,
    required ExpenseDescription description,
    required ExpenseAmount amount,
    required AuthUser user,
  });
}

@freezed
class ExpenseRepositoryFailure with _$ExpenseRepositoryFailure {
  const factory ExpenseRepositoryFailure.validation({
    required String error,
  }) = Validation;
  const factory ExpenseRepositoryFailure.unauthorized() = Unauthorized;
  const factory ExpenseRepositoryFailure.forbidden() = Forbidden;
  const factory ExpenseRepositoryFailure.internal() = Internal;
  const factory ExpenseRepositoryFailure.notFound() = NotFound;
  const factory ExpenseRepositoryFailure.network({
    required String error,
  }) = Network;
}

extension ExpenseRepositoryFailureX on ExpenseRepositoryFailure {
  String errorMessage() {
    return when(
      validation: (error) => "Server validation failure: $error.",
      internal: () => "Failed due to a server error.",
      network: (error) => "Failed due to a network error: $error.",
      unauthorized: () => "User is not authenticated.",
      forbidden: () => "You are not authorized to perform this action.",
      notFound: () => "Group not found.",
    );
  }
}

class FakeExpenseRepository extends ExpenseRepository {
  bool validationError = false;
  bool internalError = false;
  bool unauthorized = false;

  List<Expense> expenses = List.empty(growable: true);

  @override
  Future<Either<ExpenseRepositoryFailure, UuidValue>> create_expense({
    required UuidValue group,
    required ExpenseDescription description,
    required ExpenseAmount amount,
    required AuthUser user,
  }) async {
    if (validationError) {
      return left(
          const ExpenseRepositoryFailure.validation(error: 'Validation error'));
    }
    if (internalError) {
      return left(const ExpenseRepositoryFailure.internal());
    }
    if (unauthorized) {
      return left(const ExpenseRepositoryFailure.unauthorized());
    }
    //todo include the group id somehow
    final expense = Expense(
      id: UuidValue(const Uuid().v4()),
      description: description,
      amount: amount,
      user: GroupMember(
        id: user.id,
        name: UserName.build('my name').fold(
          (l) => throw Error(),
          id,
        ),
        isAdmin: false,
        email: EmailAddress.buildOrThrow('r@r.com'),
        color: MemberColor.buildOrThrow(0, 255, 0),
        joinedAt: DateTime.now(),
        activeUser: false,
      ),
      date: DateTime.now(),
    );
    expenses.add(expense);
    return right(expense.id);
  }

  @override
  Future<Either<ExpenseRepositoryFailure, Unit>> delete_expense({
    required UuidValue group,
    required Expense expense,
    required AuthUser user,
  }) async {
    if (internalError) {
      return left(const ExpenseRepositoryFailure.internal());
    }
    if (unauthorized) {
      return left(const ExpenseRepositoryFailure.unauthorized());
    }
    expenses.remove(expense);
    return right(unit);
  }

  @override
  Future<Either<ExpenseRepositoryFailure, Unit>> edit_expense({
    required UuidValue group,
    required Expense expense,
    required ExpenseDescription description,
    required ExpenseAmount amount,
    required AuthUser user,
  }) async {
    if (validationError) {
      return left(
          const ExpenseRepositoryFailure.validation(error: 'Validation error'));
    }
    if (internalError) {
      return left(const ExpenseRepositoryFailure.internal());
    }
    if (unauthorized) {
      return left(const ExpenseRepositoryFailure.unauthorized());
    }
    expenses.remove(expense);
    final newExp = expense.copyWith(description: description, amount: amount);
    expenses.add(newExp);
    return right(unit);
  }
}

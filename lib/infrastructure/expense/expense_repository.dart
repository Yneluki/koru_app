import 'package:koru/domain/auth/model/auth_user.dart';
import 'package:dartz/dartz.dart';
import 'package:koru/domain/expense/expense_repository.dart';
import 'package:koru/domain/expense/model/expense.dart';
import 'package:koru/domain/expense/model/expense_amount.dart';
import 'package:koru/domain/expense/model/expense_description.dart';
import 'package:koru/infrastructure/expense/expense_api.dart';
import 'package:uuid/uuid.dart';

class KoruExpenseRepository extends ExpenseRepository {
  final KoruExpenseApi api;

  KoruExpenseRepository({
    required this.api,
  });

  @override
  Future<Either<ExpenseRepositoryFailure, UuidValue>> create_expense({
    required UuidValue group,
    required ExpenseDescription description,
    required ExpenseAmount amount,
    required AuthUser user,
  }) async {
    return await api.create_expense(
      group: group,
      description: description,
      amount: amount,
      user: user,
    );
  }

  @override
  Future<Either<ExpenseRepositoryFailure, Unit>> delete_expense({
    required UuidValue group,
    required Expense expense,
    required AuthUser user,
  }) async {
    return await api.delete_expense(
      group: group,
      expense: expense,
      user: user,
    );
  }

  @override
  Future<Either<ExpenseRepositoryFailure, Unit>> edit_expense({
    required UuidValue group,
    required Expense expense,
    required ExpenseDescription description,
    required ExpenseAmount amount,
    required AuthUser user,
  }) async {
    return await api.update_expense(
      group: group,
      expense: expense,
      description: description,
      amount: amount,
      user: user,
    );
  }
}

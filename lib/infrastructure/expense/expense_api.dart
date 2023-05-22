import 'dart:convert';

import 'package:koru/domain/auth/model/auth_user.dart';
import 'package:dartz/dartz.dart';
import 'package:koru/domain/expense/expense_repository.dart';
import 'package:koru/domain/expense/model/expense.dart';
import 'package:koru/domain/expense/model/expense_amount.dart';
import 'package:koru/domain/expense/model/expense_description.dart';
import 'package:http/http.dart' as http;
import 'package:koru/infrastructure/core/response.dart';
import 'package:uuid/uuid.dart';

class KoruExpenseApi {
  final String baseUrl;

  KoruExpenseApi({
    required this.baseUrl,
  });

  Future<Either<ExpenseRepositoryFailure, UuidValue>> create_expense({
    required UuidValue group,
    required ExpenseDescription description,
    required ExpenseAmount amount,
    required AuthUser user,
  }) async {
    try {
      final response = await http.post(
        Uri.parse('$baseUrl/groups/${group.uuid}/expenses'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'cookie': user.token.value
        },
        body: jsonEncode(<String, dynamic>{
          'description': description.value,
          'amount': amount.value,
        }),
      );

      switch (response.statusCode) {
        case 201:
          var resp = ServerResponse<IdData>.fromJson(
              jsonDecode(utf8.decode(response.bodyBytes)));
          final expenseId = UuidValue(resp.data.id);
          return right(expenseId);
        case 400:
          var resp = ServerResponse<ErrorData>.fromJson(
              jsonDecode(utf8.decode(response.bodyBytes)));
          return left(
              ExpenseRepositoryFailure.validation(error: resp.data.error));
        case 401:
          return left(const ExpenseRepositoryFailure.unauthorized());
        case 403:
          return left(const ExpenseRepositoryFailure.forbidden());
        case 500:
          var resp = ServerResponse<ErrorData>.fromJson(
              jsonDecode(utf8.decode(response.bodyBytes)));
          print("500 error:" + resp.data.error);
          return left(const ExpenseRepositoryFailure.internal());
        default:
          return left(const ExpenseRepositoryFailure.internal());
      }
    } catch (e) {
      return left(ExpenseRepositoryFailure.network(
        error: e.toString(),
      ));
    }
  }

  Future<Either<ExpenseRepositoryFailure, Unit>> delete_expense({
    required UuidValue group,
    required Expense expense,
    required AuthUser user,
  }) async {
    try {
      final response = await http.delete(
        Uri.parse('$baseUrl/groups/${group.uuid}/expenses/${expense.id.uuid}'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'cookie': user.token.value
        },
      );

      switch (response.statusCode) {
        case 204:
          return right(unit);
        case 401:
          return left(const ExpenseRepositoryFailure.unauthorized());
        case 403:
          return left(const ExpenseRepositoryFailure.forbidden());
        case 404:
          return left(const ExpenseRepositoryFailure.notFound());
        case 500:
          var resp = ServerResponse<ErrorData>.fromJson(
              jsonDecode(utf8.decode(response.bodyBytes)));
          print("500 error:" + resp.data.error);
          return left(const ExpenseRepositoryFailure.internal());
        default:
          return left(const ExpenseRepositoryFailure.internal());
      }
    } catch (e) {
      return left(ExpenseRepositoryFailure.network(
        error: e.toString(),
      ));
    }
  }

  Future<Either<ExpenseRepositoryFailure, Unit>> update_expense({
    required UuidValue group,
    required Expense expense,
    required ExpenseDescription description,
    required ExpenseAmount amount,
    required AuthUser user,
  }) async {
    try {
      final response = await http.put(
        Uri.parse('$baseUrl/groups/${group.uuid}/expenses/${expense.id.uuid}'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'cookie': user.token.value
        },
        body: jsonEncode(<String, dynamic>{
          'description': description.value,
          'amount': amount.value,
        }),
      );

      switch (response.statusCode) {
        case 200:
          var resp = ServerResponse<MessageData>.fromJson(
              jsonDecode(utf8.decode(response.bodyBytes)));
          return right(unit);
        case 400:
          var resp = ServerResponse<ErrorData>.fromJson(
              jsonDecode(utf8.decode(response.bodyBytes)));
          return left(
              ExpenseRepositoryFailure.validation(error: resp.data.error));
        case 401:
          return left(const ExpenseRepositoryFailure.unauthorized());
        case 403:
          return left(const ExpenseRepositoryFailure.forbidden());
        case 404:
          return left(const ExpenseRepositoryFailure.notFound());
        case 500:
          var resp = ServerResponse<ErrorData>.fromJson(
              jsonDecode(utf8.decode(response.bodyBytes)));
          print("500 error:" + resp.data.error);
          return left(const ExpenseRepositoryFailure.internal());
        default:
          return left(const ExpenseRepositoryFailure.internal());
      }
    } catch (e) {
      return left(ExpenseRepositoryFailure.network(
        error: e.toString(),
      ));
    }
  }
}

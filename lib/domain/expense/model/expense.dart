import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:koru/domain/expense/model/expense_amount.dart';
import 'package:koru/domain/expense/model/expense_description.dart';
import 'package:koru/domain/group/model/group_member.dart';
import 'package:uuid/uuid.dart';

part 'expense.freezed.dart';

@freezed
class Expense with _$Expense {
  const factory Expense({
    required UuidValue id,
    required ExpenseDescription description,
    required ExpenseAmount amount,
    required GroupMember user,
    required DateTime date,
  }) = _Expense;
}

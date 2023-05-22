import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:koru/domain/expense/model/expense_amount.dart';
import 'package:koru/domain/group/model/group_member.dart';

part 'transaction.freezed.dart';

@freezed
class Transaction with _$Transaction {
  const factory Transaction({
    required GroupMember from,
    required GroupMember to,
    required ExpenseAmount amount,
  }) = _Transaction;
}

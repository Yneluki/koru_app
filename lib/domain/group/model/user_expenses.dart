import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:koru/domain/group/model/group_member.dart';

part 'user_expenses.freezed.dart';

@freezed
class UserExpenses with _$UserExpenses {
  const factory UserExpenses({
    required GroupMember user,
    required double total,
  }) = _UserExpenses;
}

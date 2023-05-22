import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:koru/domain/auth/model/email_address.dart';
import 'package:koru/domain/auth/model/user_name.dart';
import 'package:koru/domain/expense/model/expense.dart';
import 'package:koru/domain/expense/model/expense_amount.dart';
import 'package:koru/domain/expense/model/expense_description.dart';
import 'package:koru/domain/group/model/detailed_group.dart';
import 'package:koru/domain/group/model/group.dart';
import 'package:koru/domain/group/model/group_member.dart';
import 'package:koru/domain/group/model/group_name.dart';
import 'package:koru/domain/group/model/member_color.dart';
import 'package:koru/domain/settlement/model/settlement.dart';
import 'package:koru/domain/settlement/model/transaction.dart';
import 'package:uuid/uuid.dart';

part 'response.freezed.dart';
part 'response.g.dart';

@JsonSerializable(createToJson: false)
class ServerResponse<T> {
  final bool success;
  @JsonKey(fromJson: _dataFromJson)
  final T data;

  const ServerResponse({
    required this.success,
    required this.data,
  });

  factory ServerResponse.fromJson(Map<String, dynamic> json) =>
      _$ServerResponseFromJson(json);

  static T _dataFromJson<T>(Object json) {
    if (json is Map<String, dynamic>) {
      if (json.containsKey('error')) {
        return ErrorData.fromJson(json) as T;
      }

      if (json.containsKey('message')) {
        return MessageData.fromJson(json) as T;
      }

      if (json.containsKey('id')) {
        return IdData.fromJson(json) as T;
      }

      if (json.containsKey('groups')) {
        return GroupsData.fromJson(json) as T;
      }

      if (json.containsKey('group')) {
        return DetailedGroupData.fromJson(json) as T;
      }

      if (json.containsKey('token')) {
        return TokenData.fromJson(json) as T;
      }

      if (json.containsKey('settlements')) {
        return SettlementsData.fromJson(json) as T;
      }
    }

    throw ArgumentError.value(
      json,
      'json',
      'Cannot convert the provided data.',
    );
  }
}

@freezed
class ErrorData with _$ErrorData {
  factory ErrorData({
    required String error,
  }) = _ErrorData;

  factory ErrorData.fromJson(Map<String, dynamic> json) =>
      _$ErrorDataFromJson(json);
}

@freezed
class MessageData with _$MessageData {
  factory MessageData({
    required String message,
  }) = _MessageData;

  factory MessageData.fromJson(Map<String, dynamic> json) =>
      _$MessageDataFromJson(json);
}

@freezed
class TokenData with _$TokenData {
  factory TokenData({
    required String token,
  }) = _TokenData;

  factory TokenData.fromJson(Map<String, dynamic> json) =>
      _$TokenDataFromJson(json);
}

@freezed
class IdData with _$IdData {
  factory IdData({
    required String id,
  }) = _IdData;

  factory IdData.fromJson(Map<String, dynamic> json) => _$IdDataFromJson(json);
}

@JsonSerializable(createToJson: false)
class GroupsData {
  final List<GroupDto> groups;

  factory GroupsData.fromJson(Map<String, dynamic> json) =>
      _$GroupsDataFromJson(json);

  const GroupsData({required this.groups});
}

@JsonSerializable(createToJson: false)
class GroupDto {
  final String id;
  final String name;
  final List<MemberDto> members;

  const GroupDto({
    required this.id,
    required this.name,
    required this.members,
  });

  factory GroupDto.fromJson(Map<String, dynamic> json) =>
      _$GroupDtoFromJson(json);

  Group toGroup(UuidValue userId) {
    return Group(
      id: UuidValue(id),
      name: GroupName.buildOrThrow(name),
      admin: members.firstWhere((m) => m.is_admin).toGroupMember(userId),
      members: members
          .where((m) => !m.is_admin)
          .map(
            (e) => e.toGroupMember(userId),
          )
          .toList(growable: false),
    );
  }
}

@JsonSerializable(createToJson: false)
class MemberDto {
  final String id;
  final String name;
  final String email;
  final bool is_admin;
  final ColorDto color;
  final String joined_at;

  const MemberDto({
    required this.id,
    required this.name,
    required this.email,
    required this.is_admin,
    required this.color,
    required this.joined_at,
  });

  factory MemberDto.fromJson(Map<String, dynamic> json) =>
      _$MemberDtoFromJson(json);

  GroupMember toGroupMember(UuidValue userId) {
    return GroupMember(
      id: UuidValue(id),
      name: UserName.buildOrThrow(name),
      email: EmailAddress.buildOrThrow(email),
      isAdmin: is_admin,
      color: MemberColor.buildOrThrow(color.red, color.green, color.blue),
      joinedAt: DateTime.parse(joined_at),
      activeUser: userId == UuidValue(id),
    );
  }
}

@JsonSerializable(createToJson: true)
class ColorDto {
  final int red;
  final int green;
  final int blue;

  const ColorDto({
    required this.red,
    required this.green,
    required this.blue,
  });

  factory ColorDto.from(MemberColor color) => ColorDto(
        red: color.red,
        green: color.green,
        blue: color.blue,
      );

  factory ColorDto.fromJson(Map<String, dynamic> json) =>
      _$ColorDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ColorDtoToJson(this);
}

@JsonSerializable(createToJson: false)
class ExpenseDto {
  final String id;
  final String description;
  final double amount;
  final MemberDto user;
  final String date;

  const ExpenseDto({
    required this.id,
    required this.description,
    required this.amount,
    required this.user,
    required this.date,
  });

  factory ExpenseDto.fromJson(Map<String, dynamic> json) =>
      _$ExpenseDtoFromJson(json);

  Expense toExpense(UuidValue userId) {
    return Expense(
      id: UuidValue(id),
      description: ExpenseDescription.buildOrThrow(description),
      amount: ExpenseAmount.fromDoubleOrThrow(amount),
      user: user.toGroupMember(userId),
      date: DateTime.parse(date),
    );
  }
}

@JsonSerializable(createToJson: false)
class DetailedGroupData {
  final DetailedGroupDto group;

  factory DetailedGroupData.fromJson(Map<String, dynamic> json) =>
      _$DetailedGroupDataFromJson(json);

  const DetailedGroupData({required this.group});
}

@JsonSerializable(createToJson: false)
class DetailedGroupDto {
  final String id;
  final String name;
  final List<MemberDto> members;
  final List<ExpenseDto> expenses;

  const DetailedGroupDto({
    required this.id,
    required this.name,
    required this.members,
    required this.expenses,
  });

  factory DetailedGroupDto.fromJson(Map<String, dynamic> json) =>
      _$DetailedGroupDtoFromJson(json);

  DetailedGroup toDetailedGroup(UuidValue userId) {
    return DetailedGroup(
      group: Group(
        id: UuidValue(id),
        name: GroupName.buildOrThrow(name),
        admin: members.firstWhere((m) => m.is_admin).toGroupMember(userId),
        members: members
            .where((m) => !m.is_admin)
            .map(
              (e) => e.toGroupMember(userId),
            )
            .toList(growable: false),
      ),
      expenses: expenses
          .map(
            (e) => e.toExpense(userId),
          )
          .toList(growable: false),
    );
  }
}

@JsonSerializable(createToJson: false)
class SettlementsData {
  final List<SettlementDto> settlements;

  factory SettlementsData.fromJson(Map<String, dynamic> json) =>
      _$SettlementsDataFromJson(json);

  const SettlementsData({required this.settlements});
}

@JsonSerializable(createToJson: false)
class SettlementDto {
  final String id;
  final DateTime? start_date;
  final DateTime end_date;
  final List<TransactionDto> transactions;

  const SettlementDto({
    required this.id,
    required this.start_date,
    required this.end_date,
    required this.transactions,
  });

  factory SettlementDto.fromJson(Map<String, dynamic> json) =>
      _$SettlementDtoFromJson(json);

  Settlement toSettlement(UuidValue userId) {
    return Settlement(
      id: UuidValue(id),
      startDate: optionOf(start_date),
      endDate: end_date,
      transactions: transactions.map((t) => t.toTransaction(userId)).toList(),
    );
  }
}

@JsonSerializable(createToJson: false)
class TransactionDto {
  final MemberDto from;
  final MemberDto to;
  final double amount;

  const TransactionDto({
    required this.from,
    required this.to,
    required this.amount,
  });

  factory TransactionDto.fromJson(Map<String, dynamic> json) =>
      _$TransactionDtoFromJson(json);

  Transaction toTransaction(UuidValue userId) {
    return Transaction(
      amount: ExpenseAmount.fromDoubleOrThrow(amount),
      from: from.toGroupMember(userId),
      to: to.toGroupMember(userId),
    );
  }
}

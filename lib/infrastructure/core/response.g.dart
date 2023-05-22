// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ServerResponse<T> _$ServerResponseFromJson<T>(Map<String, dynamic> json) =>
    ServerResponse<T>(
      success: json['success'] as bool,
      data: ServerResponse._dataFromJson(json['data'] as Object),
    );

GroupsData _$GroupsDataFromJson(Map<String, dynamic> json) => GroupsData(
      groups: (json['groups'] as List<dynamic>)
          .map((e) => GroupDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

GroupDto _$GroupDtoFromJson(Map<String, dynamic> json) => GroupDto(
      id: json['id'] as String,
      name: json['name'] as String,
      members: (json['members'] as List<dynamic>)
          .map((e) => MemberDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

MemberDto _$MemberDtoFromJson(Map<String, dynamic> json) => MemberDto(
      id: json['id'] as String,
      name: json['name'] as String,
      email: json['email'] as String,
      is_admin: json['is_admin'] as bool,
      color: ColorDto.fromJson(json['color'] as Map<String, dynamic>),
      joined_at: json['joined_at'] as String,
    );

ColorDto _$ColorDtoFromJson(Map<String, dynamic> json) => ColorDto(
      red: json['red'] as int,
      green: json['green'] as int,
      blue: json['blue'] as int,
    );

Map<String, dynamic> _$ColorDtoToJson(ColorDto instance) => <String, dynamic>{
      'red': instance.red,
      'green': instance.green,
      'blue': instance.blue,
    };

ExpenseDto _$ExpenseDtoFromJson(Map<String, dynamic> json) => ExpenseDto(
      id: json['id'] as String,
      description: json['description'] as String,
      amount: (json['amount'] as num).toDouble(),
      user: MemberDto.fromJson(json['user'] as Map<String, dynamic>),
      date: json['date'] as String,
    );

DetailedGroupData _$DetailedGroupDataFromJson(Map<String, dynamic> json) =>
    DetailedGroupData(
      group: DetailedGroupDto.fromJson(json['group'] as Map<String, dynamic>),
    );

DetailedGroupDto _$DetailedGroupDtoFromJson(Map<String, dynamic> json) =>
    DetailedGroupDto(
      id: json['id'] as String,
      name: json['name'] as String,
      members: (json['members'] as List<dynamic>)
          .map((e) => MemberDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      expenses: (json['expenses'] as List<dynamic>)
          .map((e) => ExpenseDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

SettlementsData _$SettlementsDataFromJson(Map<String, dynamic> json) =>
    SettlementsData(
      settlements: (json['settlements'] as List<dynamic>)
          .map((e) => SettlementDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

SettlementDto _$SettlementDtoFromJson(Map<String, dynamic> json) =>
    SettlementDto(
      id: json['id'] as String,
      start_date: json['start_date'] == null
          ? null
          : DateTime.parse(json['start_date'] as String),
      end_date: DateTime.parse(json['end_date'] as String),
      transactions: (json['transactions'] as List<dynamic>)
          .map((e) => TransactionDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

TransactionDto _$TransactionDtoFromJson(Map<String, dynamic> json) =>
    TransactionDto(
      from: MemberDto.fromJson(json['from'] as Map<String, dynamic>),
      to: MemberDto.fromJson(json['to'] as Map<String, dynamic>),
      amount: (json['amount'] as num).toDouble(),
    );

_$_ErrorData _$$_ErrorDataFromJson(Map<String, dynamic> json) => _$_ErrorData(
      error: json['error'] as String,
    );

Map<String, dynamic> _$$_ErrorDataToJson(_$_ErrorData instance) =>
    <String, dynamic>{
      'error': instance.error,
    };

_$_MessageData _$$_MessageDataFromJson(Map<String, dynamic> json) =>
    _$_MessageData(
      message: json['message'] as String,
    );

Map<String, dynamic> _$$_MessageDataToJson(_$_MessageData instance) =>
    <String, dynamic>{
      'message': instance.message,
    };

_$_TokenData _$$_TokenDataFromJson(Map<String, dynamic> json) => _$_TokenData(
      token: json['token'] as String,
    );

Map<String, dynamic> _$$_TokenDataToJson(_$_TokenData instance) =>
    <String, dynamic>{
      'token': instance.token,
    };

_$_IdData _$$_IdDataFromJson(Map<String, dynamic> json) => _$_IdData(
      id: json['id'] as String,
    );

Map<String, dynamic> _$$_IdDataToJson(_$_IdData instance) => <String, dynamic>{
      'id': instance.id,
    };

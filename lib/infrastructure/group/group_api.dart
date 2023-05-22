import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:koru/domain/auth/model/auth_user.dart';
import 'package:koru/domain/group/group_repository.dart';
import 'package:koru/domain/group/model/detailed_group.dart';
import 'package:koru/domain/group/model/group.dart';
import 'package:koru/domain/group/model/group_name.dart';
import 'package:koru/domain/group/model/group_token.dart';
import 'package:koru/domain/group/model/member_color.dart';
import 'package:koru/infrastructure/core/response.dart';
import 'package:uuid/uuid.dart';

class KoruGroupApi {
  final String baseUrl;

  KoruGroupApi({
    required this.baseUrl,
  });

  Future<Either<GroupRepositoryFailure, UuidValue>> create_group({
    required GroupName groupName,
    required MemberColor color,
    required AuthUser user,
  }) async {
    try {
      final response = await http.post(
        Uri.parse('$baseUrl/groups'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'cookie': user.token.value
        },
        body: jsonEncode(<String, dynamic>{
          'name': groupName.value,
          'color': ColorDto.from(color)
        }),
      );

      switch (response.statusCode) {
        case 201:
          var resp = ServerResponse<IdData>.fromJson(
              jsonDecode(utf8.decode(response.bodyBytes)));
          final groupId = UuidValue(resp.data.id);
          return right(groupId);
        case 400:
          var resp = ServerResponse<ErrorData>.fromJson(
              jsonDecode(utf8.decode(response.bodyBytes)));
          return left(
              GroupRepositoryFailure.validation(error: resp.data.error));
        case 401:
          return left(const GroupRepositoryFailure.unauthorized());
        case 403:
          return left(const GroupRepositoryFailure.forbidden());
        case 500:
          var resp = ServerResponse<ErrorData>.fromJson(
              jsonDecode(utf8.decode(response.bodyBytes)));
          print("500 error:" + resp.data.error);
          return left(const GroupRepositoryFailure.internal());
        default:
          return left(const GroupRepositoryFailure.internal());
      }
    } catch (e, stack) {
      print(e);
      print(stack.toString());
      return left(GroupRepositoryFailure.network(
        error: e.toString(),
      ));
    }
  }

  Future<Either<GroupRepositoryFailure, List<Group>>> fetch_groups({
    required AuthUser user,
  }) async {
    try {
      final response = await http.get(
        Uri.parse('$baseUrl/groups'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'cookie': user.token.value
        },
      );

      switch (response.statusCode) {
        case 200:
          var resp = ServerResponse<GroupsData>.fromJson(
              jsonDecode(utf8.decode(response.bodyBytes)));
          final groups = resp.data.groups
              .map(
                (dto) => dto.toGroup(user.id),
              )
              .toList(growable: false);
          return right(groups);
        case 401:
          return left(const GroupRepositoryFailure.unauthorized());
        case 403:
          return left(const GroupRepositoryFailure.forbidden());
        case 500:
          var resp = ServerResponse<ErrorData>.fromJson(
              jsonDecode(utf8.decode(response.bodyBytes)));
          print("500 error:" + resp.data.error);
          return left(const GroupRepositoryFailure.internal());
        default:
          return left(const GroupRepositoryFailure.internal());
      }
    } catch (e) {
      return left(GroupRepositoryFailure.network(
        error: e.toString(),
      ));
    }
  }

  Future<Either<GroupRepositoryFailure, Unit>> delete_group({
    required Group group,
    required AuthUser user,
  }) async {
    try {
      final response = await http.delete(
        Uri.parse('$baseUrl/groups/${group.id.uuid}'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'cookie': user.token.value
        },
      );

      switch (response.statusCode) {
        case 204:
          return right(unit);
        case 401:
          return left(const GroupRepositoryFailure.unauthorized());
        case 403:
          return left(const GroupRepositoryFailure.forbidden());
        case 404:
          return left(const GroupRepositoryFailure.notFound());
        case 500:
          var resp = ServerResponse<ErrorData>.fromJson(
              jsonDecode(utf8.decode(response.bodyBytes)));
          print("500 error:" + resp.data.error);
          return left(const GroupRepositoryFailure.internal());
        default:
          return left(const GroupRepositoryFailure.internal());
      }
    } catch (e) {
      return left(GroupRepositoryFailure.network(
        error: e.toString(),
      ));
    }
  }

  Future<Either<GroupRepositoryFailure, DetailedGroup>> fetch_group({
    required UuidValue groupId,
    required AuthUser user,
  }) async {
    try {
      final response = await http.get(
        Uri.parse('$baseUrl/groups/${groupId.uuid}'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'cookie': user.token.value
        },
      );

      switch (response.statusCode) {
        case 200:
          var resp = ServerResponse<DetailedGroupData>.fromJson(
              jsonDecode(utf8.decode(response.bodyBytes)));
          return right(resp.data.group.toDetailedGroup(user.id));
        case 401:
          return left(const GroupRepositoryFailure.unauthorized());
        case 403:
          return left(const GroupRepositoryFailure.forbidden());
        case 404:
          return left(const GroupRepositoryFailure.notFound());
        case 500:
          var resp = ServerResponse<ErrorData>.fromJson(
              jsonDecode(utf8.decode(response.bodyBytes)));
          print("500 error:" + resp.data.error);
          return left(const GroupRepositoryFailure.internal());
        default:
          return left(const GroupRepositoryFailure.internal());
      }
    } catch (e) {
      return left(GroupRepositoryFailure.network(
        error: e.toString(),
      ));
    }
  }

  Future<Either<GroupRepositoryFailure, String>> generate_group_token({
    required UuidValue groupId,
    required AuthUser user,
  }) async {
    try {
      final response = await http.get(
        Uri.parse('$baseUrl/groups/${groupId.uuid}/token'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'cookie': user.token.value
        },
      );

      switch (response.statusCode) {
        case 200:
          var resp = ServerResponse<TokenData>.fromJson(
              jsonDecode(utf8.decode(response.bodyBytes)));
          return right(resp.data.token);
        case 401:
          return left(const GroupRepositoryFailure.unauthorized());
        case 403:
          return left(const GroupRepositoryFailure.forbidden());
        case 404:
          return left(const GroupRepositoryFailure.notFound());
        case 500:
          var resp = ServerResponse<ErrorData>.fromJson(
              jsonDecode(utf8.decode(response.bodyBytes)));
          print("500 error:" + resp.data.error);
          return left(const GroupRepositoryFailure.internal());
        default:
          return left(const GroupRepositoryFailure.internal());
      }
    } catch (e) {
      return left(GroupRepositoryFailure.network(
        error: e.toString(),
      ));
    }
  }

  Future<Either<GroupRepositoryFailure, Unit>> join_group({
    required GroupToken token,
    required MemberColor color,
    required AuthUser user,
  }) async {
    try {
      final response = await http.post(
        Uri.parse('$baseUrl/groups/${token.groupId()}/members'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'cookie': user.token.value
        },
        body: jsonEncode(<String, dynamic>{
          'token': token.value,
          'color': ColorDto.from(color),
        }),
      );

      switch (response.statusCode) {
        case 201:
          var resp = ServerResponse<MessageData>.fromJson(
              jsonDecode(utf8.decode(response.bodyBytes)));
          return right(unit);
        case 401:
          return left(const GroupRepositoryFailure.unauthorized());
        case 403:
          return left(const GroupRepositoryFailure.forbidden());
        case 404:
          return left(const GroupRepositoryFailure.notFound());
        case 409:
          return left(const GroupRepositoryFailure.conflict());
        case 500:
          var resp = ServerResponse<ErrorData>.fromJson(
              jsonDecode(utf8.decode(response.bodyBytes)));
          print("500 error:" + resp.data.error);
          return left(const GroupRepositoryFailure.internal());
        default:
          return left(const GroupRepositoryFailure.internal());
      }
    } catch (e, stack) {
      print(e);
      print(stack.toString());
      return left(GroupRepositoryFailure.network(
        error: e.toString(),
      ));
    }
  }

  Future<Either<GroupRepositoryFailure, Unit>> change_color({
    required UuidValue group,
    required MemberColor color,
    required AuthUser user,
  }) async {
    try {
      final response = await http.patch(
        Uri.parse('$baseUrl/groups/$group/members'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'cookie': user.token.value
        },
        body: jsonEncode(<String, dynamic>{
          'color': ColorDto.from(color),
        }),
      );

      switch (response.statusCode) {
        case 200:
          var resp = ServerResponse<MessageData>.fromJson(
              jsonDecode(utf8.decode(response.bodyBytes)));
          return right(unit);
        case 401:
          return left(const GroupRepositoryFailure.unauthorized());
        case 403:
          return left(const GroupRepositoryFailure.forbidden());
        case 404:
          return left(const GroupRepositoryFailure.notFound());
        case 409:
          return left(const GroupRepositoryFailure.conflict());
        case 500:
          var resp = ServerResponse<ErrorData>.fromJson(
              jsonDecode(utf8.decode(response.bodyBytes)));
          print("500 error:" + resp.data.error);
          return left(const GroupRepositoryFailure.internal());
        default:
          return left(const GroupRepositoryFailure.internal());
      }
    } catch (e, stack) {
      print(e);
      print(stack.toString());
      return left(GroupRepositoryFailure.network(
        error: e.toString(),
      ));
    }
  }
}

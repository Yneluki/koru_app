import 'package:dartz/dartz.dart';
import 'package:koru/domain/auth/model/auth_user.dart';
import 'package:koru/domain/group/group_repository.dart';
import 'package:koru/domain/group/model/detailed_group.dart';
import 'package:koru/domain/group/model/group.dart';
import 'package:koru/domain/group/model/group_name.dart';
import 'package:koru/domain/group/model/group_token.dart';
import 'package:koru/domain/group/model/member_color.dart';
import 'package:koru/infrastructure/group/group_api.dart';
import 'package:uuid/uuid.dart';

class KoruGroupRepository extends GroupRepository {
  final KoruGroupApi api;

  KoruGroupRepository({
    required this.api,
  });

  @override
  Future<Either<GroupRepositoryFailure, UuidValue>> create_group({
    required GroupName groupName,
    required MemberColor color,
    required AuthUser user,
  }) async {
    return await api.create_group(
      groupName: groupName,
      color: color,
      user: user,
    );
  }

  @override
  Future<Either<GroupRepositoryFailure, List<Group>>> fetch_groups({
    required AuthUser user,
  }) async {
    return await api.fetch_groups(user: user);
  }

  @override
  Future<Either<GroupRepositoryFailure, Unit>> delete_group({
    required Group group,
    required AuthUser user,
  }) async {
    return await api.delete_group(
      group: group,
      user: user,
    );
  }

  @override
  Future<Either<GroupRepositoryFailure, DetailedGroup>> fetch_group({
    required UuidValue groupId,
    required AuthUser user,
  }) async {
    return await api.fetch_group(
      groupId: groupId,
      user: user,
    );
  }

  @override
  Future<Either<GroupRepositoryFailure, String>> generate_group_token({
    required UuidValue groupId,
    required AuthUser user,
  }) async {
    return await api.generate_group_token(
      groupId: groupId,
      user: user,
    );
  }

  @override
  Future<Either<GroupRepositoryFailure, Unit>> join_group({
    required GroupToken token,
    required MemberColor color,
    required AuthUser user,
  }) async {
    return await api.join_group(
      token: token,
      color: color,
      user: user,
    );
  }

  @override
  Future<Either<GroupRepositoryFailure, Unit>> change_color({
    required UuidValue group,
    required MemberColor color,
    required AuthUser user,
  }) async {
    return await api.change_color(
      group: group,
      color: color,
      user: user,
    );
  }
}

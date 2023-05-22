import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:koru/domain/auth/model/auth_user.dart';
import 'package:koru/domain/auth/model/email_address.dart';
import 'package:koru/domain/auth/model/user_name.dart';
import 'package:koru/domain/group/model/detailed_group.dart';
import 'package:koru/domain/group/model/group.dart';
import 'package:koru/domain/group/model/group_member.dart';
import 'package:koru/domain/group/model/group_name.dart';
import 'package:koru/domain/group/model/group_token.dart';
import 'package:koru/domain/group/model/member_color.dart';
import 'package:uuid/uuid.dart';

part 'group_repository.freezed.dart';

abstract class GroupRepository {
  Future<Either<GroupRepositoryFailure, UuidValue>> create_group({
    required GroupName groupName,
    required MemberColor color,
    required AuthUser user,
  });
  Future<Either<GroupRepositoryFailure, List<Group>>> fetch_groups({
    required AuthUser user,
  });
  Future<Either<GroupRepositoryFailure, DetailedGroup>> fetch_group({
    required UuidValue groupId,
    required AuthUser user,
  });
  Future<Either<GroupRepositoryFailure, Unit>> delete_group({
    required Group group,
    required AuthUser user,
  });
  Future<Either<GroupRepositoryFailure, String>> generate_group_token({
    required UuidValue groupId,
    required AuthUser user,
  });
  Future<Either<GroupRepositoryFailure, Unit>> join_group({
    required GroupToken token,
    required MemberColor color,
    required AuthUser user,
  });
  Future<Either<GroupRepositoryFailure, Unit>> change_color({
    required UuidValue group,
    required MemberColor color,
    required AuthUser user,
  });
}

@freezed
class GroupRepositoryFailure with _$GroupRepositoryFailure {
  const factory GroupRepositoryFailure.validation({
    required String error,
  }) = Validation;
  const factory GroupRepositoryFailure.unauthorized() = Unauthorized;
  const factory GroupRepositoryFailure.forbidden() = Forbidden;
  const factory GroupRepositoryFailure.internal() = Internal;
  const factory GroupRepositoryFailure.conflict() = Conflict;
  const factory GroupRepositoryFailure.notFound() = NotFound;
  const factory GroupRepositoryFailure.network({
    required String error,
  }) = Network;
}

extension GroupRepositoryFailureX on GroupRepositoryFailure {
  String errorMessage() {
    return when(
        validation: (error) => "Server validation failure: $error.",
        internal: () => "Failed due to a server error.",
        network: (error) => "Failed due to a network error: $error.",
        unauthorized: () => "User is not authenticated.",
        forbidden: () => "You are not authorized to perform this action.",
        notFound: () => "Group not found.",
        conflict: () => "You are already a member of this group.");
  }
}

class FakeGroupRepository extends GroupRepository {
  bool validationError = false;
  bool internalError = false;
  bool unauthorized = false;

  List<Group> groups = List.empty(growable: true);

  @override
  Future<Either<GroupRepositoryFailure, UuidValue>> create_group({
    required GroupName groupName,
    required MemberColor color,
    required AuthUser user,
  }) async {
    if (validationError) {
      return left(
          const GroupRepositoryFailure.validation(error: 'Validation error'));
    }
    if (internalError) {
      return left(const GroupRepositoryFailure.internal());
    }
    if (unauthorized) {
      return left(const GroupRepositoryFailure.unauthorized());
    }
    final group = Group(
      id: UuidValue(const Uuid().v4()),
      name: groupName,
      admin: GroupMember(
        id: user.id,
        name: UserName.build('my name').fold(
          (l) => throw Error(),
          id,
        ),
        isAdmin: true,
        email: EmailAddress.buildOrThrow('r@r.com'),
        color: color,
        joinedAt: DateTime.now(),
        activeUser: false,
      ),
      members: List.empty(),
    );
    groups.add(group);
    return right(group.id);
  }

  @override
  Future<Either<GroupRepositoryFailure, List<Group>>> fetch_groups({
    required AuthUser user,
  }) async {
    if (internalError) {
      return left(const GroupRepositoryFailure.internal());
    }
    if (unauthorized) {
      return left(const GroupRepositoryFailure.unauthorized());
    }
    return right(groups);
  }

  @override
  Future<Either<GroupRepositoryFailure, Unit>> delete_group({
    required Group group,
    required AuthUser user,
  }) async {
    if (internalError) {
      return left(const GroupRepositoryFailure.internal());
    }
    if (unauthorized) {
      return left(const GroupRepositoryFailure.unauthorized());
    }
    groups.remove(group);
    return right(unit);
  }

  @override
  Future<Either<GroupRepositoryFailure, DetailedGroup>> fetch_group({
    required UuidValue groupId,
    required AuthUser user,
  }) async {
    try {
      final group = groups.firstWhere((g) => g.id == groupId);
      return right(DetailedGroup(
        group: group,
        expenses: List.empty(),
      ));
    } catch (e) {
      return left(const GroupRepositoryFailure.notFound());
    }
  }

  @override
  Future<Either<GroupRepositoryFailure, String>> generate_group_token({
    required UuidValue groupId,
    required AuthUser user,
  }) async {
    if (internalError) {
      return left(const GroupRepositoryFailure.internal());
    }
    if (unauthorized) {
      return left(const GroupRepositoryFailure.unauthorized());
    }
    return right('token');
  }

  @override
  Future<Either<GroupRepositoryFailure, Unit>> join_group({
    required GroupToken token,
    required MemberColor color,
    required AuthUser user,
  }) async {
    if (validationError) {
      return left(
          const GroupRepositoryFailure.validation(error: 'Validation error'));
    }
    if (internalError) {
      return left(const GroupRepositoryFailure.internal());
    }
    if (unauthorized) {
      return left(const GroupRepositoryFailure.unauthorized());
    }
    return right(unit);
  }

  @override
  Future<Either<GroupRepositoryFailure, Unit>> change_color({
    required UuidValue group,
    required MemberColor color,
    required AuthUser user,
  }) async {
    if (validationError) {
      return left(
          const GroupRepositoryFailure.validation(error: 'Validation error'));
    }
    if (internalError) {
      return left(const GroupRepositoryFailure.internal());
    }
    if (unauthorized) {
      return left(const GroupRepositoryFailure.unauthorized());
    }
    return right(unit);
  }
}

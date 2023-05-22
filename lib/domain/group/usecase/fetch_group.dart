import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:koru/domain/auth/auth_service.dart';
import 'package:koru/domain/group/group_repository.dart';
import 'package:koru/domain/group/model/detailed_group.dart';
import 'package:uuid/uuid.dart';

part 'fetch_group.freezed.dart';

Future<Either<FetchGroupFailure, DetailedGroup>> fetch_group({
  required UuidValue groupId,
  required AuthService authService,
  required GroupRepository repository,
}) async {
  final user = authService.get_signed_in_user();
  return user.fold(
    () => left(
      const FetchGroupFailure.groupRepositoryError(
        failure: GroupRepositoryFailure.unauthorized(),
      ),
    ),
    (user) async {
      final res = await repository.fetch_group(groupId: groupId, user: user);
      return res.fold(
        (l) => left(
          FetchGroupFailure.groupRepositoryError(
            failure: l,
          ),
        ),
        (r) => right(r),
      );
    },
  );
}

@freezed
class FetchGroupFailure with _$FetchGroupFailure {
  const factory FetchGroupFailure.groupRepositoryError({
    required GroupRepositoryFailure failure,
  }) = GroupRepositoryError;
}

extension FetchGroupFailureX on FetchGroupFailure {
  String errorMessage() {
    return when(
      groupRepositoryError: (f) => f.errorMessage(),
    );
  }
}

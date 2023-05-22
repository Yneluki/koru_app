import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:koru/domain/auth/auth_service.dart';
import 'package:koru/domain/group/group_repository.dart';
import 'package:koru/domain/group/model/group.dart';

part 'fetch_groups.freezed.dart';

Future<Either<FetchGroupsFailure, List<Group>>> fetch_groups({
  required AuthService authService,
  required GroupRepository repository,
}) async {
  final user = authService.get_signed_in_user();
  return user.fold(
    () => left(
      const FetchGroupsFailure.groupRepositoryError(
        failure: GroupRepositoryFailure.unauthorized(),
      ),
    ),
    (user) async {
      final res = await repository.fetch_groups(user: user);
      return res.fold(
        (l) => left(
          FetchGroupsFailure.groupRepositoryError(
            failure: l,
          ),
        ),
        (r) => right(r),
      );
    },
  );
}

@freezed
class FetchGroupsFailure with _$FetchGroupsFailure {
  const factory FetchGroupsFailure.groupRepositoryError({
    required GroupRepositoryFailure failure,
  }) = GroupRepositoryError;
}

extension FetchGroupsFailureX on FetchGroupsFailure {
  String errorMessage() {
    return when(
      groupRepositoryError: (f) => f.errorMessage(),
    );
  }
}

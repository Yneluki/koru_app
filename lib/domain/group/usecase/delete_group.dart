import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:koru/domain/auth/auth_service.dart';
import 'package:koru/domain/group/group_repository.dart';
import 'package:koru/domain/group/model/group.dart';
import 'package:koru/domain/store/koru_state_service.dart';

part 'delete_group.freezed.dart';

Future<Either<DeleteGroupFailure, Unit>> delete_group({
  required Group group,
  required AuthService authService,
  required KoruStateService stateService,
  required GroupRepository repository,
}) async {
  final user = authService.get_signed_in_user();
  return user.fold(
    () => left(
      const DeleteGroupFailure.groupRepositoryError(
        failure: GroupRepositoryFailure.unauthorized(),
      ),
    ),
    (user) async {
      if (user.id != group.admin.id) {
        return left(const DeleteGroupFailure.userIsNotAdmin());
      }
      final res = await repository.delete_group(group: group, user: user);
      return res.fold(
        (l) {
          l.maybeWhen(
            orElse: () => null,
            unauthorized: () => stateService.sessionTimeout(),
          );
          return left(
            DeleteGroupFailure.groupRepositoryError(
              failure: l,
            ),
          );
        },
        (r) {
          stateService.groupDeleted();
          return right(unit);
        },
      );
    },
  );
}

@freezed
class DeleteGroupFailure with _$DeleteGroupFailure {
  const factory DeleteGroupFailure.userIsNotAdmin() = UserIsNotAdmin;

  const factory DeleteGroupFailure.groupRepositoryError({
    required GroupRepositoryFailure failure,
  }) = GroupRepositoryError;
}

extension DeleteGroupFailureX on DeleteGroupFailure {
  String errorMessage() {
    return when(
      userIsNotAdmin: () => 'You are not permitted to delete this group.',
      groupRepositoryError: (f) => f.errorMessage(),
    );
  }
}

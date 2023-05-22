import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:koru/domain/auth/auth_service.dart';
import 'package:koru/domain/group/group_repository.dart';
import 'package:koru/domain/store/koru_state_service.dart';
import 'package:uuid/uuid.dart';

part 'generate_group_token.freezed.dart';

Future<Either<GenerateTokenFailure, String>> generate_group_token({
  required UuidValue groupId,
  required AuthService authService,
  required KoruStateService stateService,
  required GroupRepository repository,
}) async {
  final user = authService.get_signed_in_user();
  return user.fold(
    () => left(
      const GenerateTokenFailure.groupRepositoryError(
        failure: GroupRepositoryFailure.unauthorized(),
      ),
    ),
    (user) async {
      final res =
          await repository.generate_group_token(groupId: groupId, user: user);
      return res.fold(
        (l) {
          l.maybeWhen(
            orElse: () => null,
            unauthorized: () => stateService.sessionTimeout(),
          );
          return left(
            GenerateTokenFailure.groupRepositoryError(
              failure: l,
            ),
          );
        },
        (r) => right(r),
      );
    },
  );
}

@freezed
class GenerateTokenFailure with _$GenerateTokenFailure {
  const factory GenerateTokenFailure.groupRepositoryError({
    required GroupRepositoryFailure failure,
  }) = GroupRepositoryError;
}

extension GenerateTokenFailureX on GenerateTokenFailure {
  String errorMessage() {
    return when(
      groupRepositoryError: (f) => f.errorMessage(),
    );
  }
}

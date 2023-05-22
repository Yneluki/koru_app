import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:koru/domain/auth/auth_service.dart';
import 'package:koru/domain/common/failures.dart';
import 'package:koru/domain/group/group_repository.dart';
import 'package:koru/domain/group/model/group_token.dart';
import 'package:koru/domain/group/model/member_color.dart';
import 'package:koru/domain/store/koru_state_service.dart';

part 'join_group.freezed.dart';

Future<Either<JoinGroupFailure, Unit>> join_group({
  required String token,
  required int red,
  required int green,
  required int blue,
  required AuthService authService,
  required KoruStateService stateService,
  required GroupRepository repository,
}) async {
  final maybeGroupToken = GroupToken.build(token);
  final maybeColor = MemberColor.build(red, green, blue);
  List<InputDataFailure> failures = List.empty(growable: true);
  final validGroupToken = maybeGroupToken.fold((l) {
    failures.add(l);
    return null;
  }, id);
  final validColor = maybeColor.fold((l) {
    failures.add(l);
    return null;
  }, id);
  if (failures.isEmpty) {
    final user = authService.get_signed_in_user();
    return user.fold(
      () => left(
        const JoinGroupFailure.groupRepositoryError(
          failure: GroupRepositoryFailure.unauthorized(),
        ),
      ),
      (user) async {
        final res = await repository.join_group(
            token: validGroupToken!, color: validColor!, user: user);
        return res.fold(
          (l) {
            l.maybeWhen(
              orElse: () => null,
              unauthorized: () => stateService.sessionTimeout(),
            );
            return left(
              JoinGroupFailure.groupRepositoryError(
                failure: l,
              ),
            );
          },
          (r) {
            stateService.groupJoined();
            return right(r);
          },
        );
      },
    );
  } else {
    return left(JoinGroupFailure.invalidData(
      failures: failures,
    ));
  }
}

@freezed
class JoinGroupFailure with _$JoinGroupFailure {
  const factory JoinGroupFailure.invalidData({
    required List<InputDataFailure> failures,
  }) = InvalidData;

  const factory JoinGroupFailure.groupRepositoryError({
    required GroupRepositoryFailure failure,
  }) = GroupRepositoryError;
}

extension JoinGroupFailureX on JoinGroupFailure {
  String errorMessage() {
    return when(
      invalidData: (failures) =>
          failures.map((e) => e.errorMessage()).join("\n"),
      groupRepositoryError: (f) => f.errorMessage(),
    );
  }
}

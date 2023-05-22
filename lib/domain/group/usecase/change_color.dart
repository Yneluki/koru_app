import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:koru/domain/auth/auth_service.dart';
import 'package:koru/domain/common/failures.dart';
import 'package:koru/domain/group/group_repository.dart';
import 'package:koru/domain/group/model/member_color.dart';
import 'package:koru/domain/store/koru_state_service.dart';
import 'package:uuid/uuid.dart';

part 'change_color.freezed.dart';

Future<Either<ChangeColorFailure, Unit>> change_color({
  required UuidValue group,
  required int red,
  required int green,
  required int blue,
  required AuthService authService,
  required KoruStateService stateService,
  required GroupRepository repository,
}) async {
  final maybeColor = MemberColor.build(red, green, blue);
  List<InputDataFailure> failures = List.empty(growable: true);
  final validColor = maybeColor.fold((l) {
    failures.add(l);
    return null;
  }, id);
  if (failures.isEmpty) {
    final user = authService.get_signed_in_user();
    return user.fold(
      () => left(
        const ChangeColorFailure.groupRepositoryError(
          failure: GroupRepositoryFailure.unauthorized(),
        ),
      ),
      (user) async {
        final res = await repository.change_color(
          group: group,
          color: validColor!,
          user: user,
        );
        return res.fold(
          (l) {
            l.maybeWhen(
              orElse: () => null,
              unauthorized: () => stateService.sessionTimeout(),
            );
            return left(
              ChangeColorFailure.groupRepositoryError(
                failure: l,
              ),
            );
          },
          (r) {
            stateService.colorChanged();
            return right(r);
          },
        );
      },
    );
  } else {
    return left(ChangeColorFailure.invalidData(
      failures: failures,
    ));
  }
}

@freezed
class ChangeColorFailure with _$ChangeColorFailure {
  const factory ChangeColorFailure.invalidData({
    required List<InputDataFailure> failures,
  }) = InvalidData;

  const factory ChangeColorFailure.groupRepositoryError({
    required GroupRepositoryFailure failure,
  }) = GroupRepositoryError;
}

extension ChangeColorFailureX on ChangeColorFailure {
  String errorMessage() {
    return when(
      invalidData: (failures) =>
          failures.map((e) => e.errorMessage()).join("\n"),
      groupRepositoryError: (f) => f.errorMessage(),
    );
  }
}

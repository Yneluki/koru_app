import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:koru/domain/auth/auth_service.dart';
import 'package:koru/domain/common/failures.dart';
import 'package:koru/domain/group/group_repository.dart';
import 'package:koru/domain/group/model/group_name.dart';
import 'package:koru/domain/group/model/member_color.dart';
import 'package:koru/domain/store/koru_state_service.dart';
import 'package:uuid/uuid.dart';

part 'create_group.freezed.dart';

Future<Either<CreateGroupFailure, UuidValue>> create_group({
  required String name,
  required int red,
  required int green,
  required int blue,
  required AuthService authService,
  required KoruStateService stateService,
  required GroupRepository repository,
}) async {
  final maybeGroupName = GroupName.build(name);
  final maybeColor = MemberColor.build(red, green, blue);
  List<InputDataFailure> failures = List.empty(growable: true);
  final validGroupName = maybeGroupName.fold((l) {
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
        const CreateGroupFailure.groupRepositoryError(
          failure: GroupRepositoryFailure.unauthorized(),
        ),
      ),
      (user) async {
        final res = await repository.create_group(
          groupName: validGroupName!,
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
              CreateGroupFailure.groupRepositoryError(
                failure: l,
              ),
            );
          },
          (r) {
            stateService.groupCreated();
            return right(r);
          },
        );
      },
    );
  } else {
    return left(CreateGroupFailure.invalidData(
      failures: failures,
    ));
  }
}

@freezed
class CreateGroupFailure with _$CreateGroupFailure {
  const factory CreateGroupFailure.invalidData({
    required List<InputDataFailure> failures,
  }) = InvalidData;

  const factory CreateGroupFailure.groupRepositoryError({
    required GroupRepositoryFailure failure,
  }) = GroupRepositoryError;
}

extension CreateGroupFailureX on CreateGroupFailure {
  String errorMessage() {
    return when(
      invalidData: (failures) =>
          failures.map((e) => e.errorMessage()).join("\n"),
      groupRepositoryError: (f) => f.errorMessage(),
    );
  }
}

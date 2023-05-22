import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:koru/domain/auth/auth_service.dart';
import 'package:koru/domain/auth/model/auth_user.dart';
import 'package:koru/domain/auth/model/email_address.dart';
import 'package:koru/domain/common/failures.dart';
import 'package:koru/domain/auth/model/password.dart';
import 'package:koru/domain/store/koru_state_service.dart';

part 'sign_in.freezed.dart';

Future<Either<SignInFailure, AuthUser>> sign_in({
  required String email,
  required String password,
  required AuthService authService,
  required KoruStateService stateService,
}) async {
  final maybeEmail = EmailAddress.build(email);
  final maybePassword = Password.build(password);

  List<InputDataFailure> failures = List.empty(growable: true);
  final validEmail = maybeEmail.fold((l) {
    failures.add(l);
    return null;
  }, id);
  final validPassword = maybePassword.fold((l) {
    failures.add(l);
    return null;
  }, id);

  if (failures.isEmpty) {
    final resp =
        await authService.sign_in(email: validEmail!, password: validPassword!);
    return resp.fold(
      (l) => left(SignInFailure.authServerError(failure: l)),
      (r) {
        stateService.userSignedIn(r);
        return right(r);
      },
    );
  } else {
    return left(SignInFailure.invalidData(failures: failures));
  }
}

@freezed
class SignInFailure with _$SignInFailure {
  const factory SignInFailure.invalidData({
    required List<InputDataFailure> failures,
  }) = InvalidData;
  const factory SignInFailure.authServerError({
    required AuthServerFailure failure,
  }) = AuthServerError;
}

extension SignInFailureX on SignInFailure {
  String errorMessage() {
    return when(
      invalidData: (failures) =>
          failures.map((e) => e.errorMessage()).join("\n"),
      authServerError: (f) => f.errorMessage(),
    );
  }
}

import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:koru/domain/auth/auth_service.dart';
import 'package:koru/domain/auth/model/email_address.dart';
import 'package:koru/domain/common/failures.dart';
import 'package:koru/domain/auth/model/password.dart';
import 'package:koru/domain/auth/model/user_name.dart';

part 'register.freezed.dart';

Future<Either<RegisterFailure, Unit>> register({
  required String email,
  required String password,
  required String confirmPassword,
  required String userName,
  required AuthService authService,
}) async {
  final maybeEmail = EmailAddress.build(email);
  final maybePassword = Password.build(password);
  final maybeConfirmPassword = Password.build(confirmPassword);
  final maybeName = UserName.build(userName);

  List<InputDataFailure> failures = List.empty(growable: true);
  final validEmail = maybeEmail.fold((l) {
    failures.add(l);
    return null;
  }, id);
  final validPassword = maybePassword.fold((l) {
    failures.add(l);
    return null;
  }, id);
  final validConfirmPassword = maybeConfirmPassword.fold((l) {
    failures.add(l);
    return null;
  }, id);
  final validName = maybeName.fold((l) {
    failures.add(l);
    return null;
  }, id);

  if (validConfirmPassword != validPassword) {
    failures.add(const InputDataFailure.passwordsDoNotMatch());
  }

  if (failures.isEmpty) {
    final resp = await authService.register(
        email: validEmail!, password: validPassword!, userName: validName!);
    return resp.fold((l) => left(RegisterFailure.authServerError(failure: l)),
        (r) => right(unit));
  } else {
    return left(RegisterFailure.invalidData(failures: failures));
  }
}

@freezed
class RegisterFailure with _$RegisterFailure {
  const factory RegisterFailure.invalidData({
    required List<InputDataFailure> failures,
  }) = InvalidData;
  const factory RegisterFailure.authServerError({
    required AuthServerFailure failure,
  }) = AuthServerError;
}

extension RegisterFailureX on RegisterFailure {
  String errorMessage() {
    return when(
      invalidData: (failures) =>
          failures.map((e) => e.errorMessage()).join("\n"),
      authServerError: (f) => f.errorMessage(),
    );
  }
}

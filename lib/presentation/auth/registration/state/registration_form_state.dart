import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:koru/application/providers.dart';
import 'package:koru/domain/auth/auth_service.dart';
import 'package:koru/domain/auth/model/email_address.dart';
import 'package:koru/domain/common/failures.dart';
import 'package:koru/domain/auth/model/password.dart';
import 'package:koru/domain/auth/usecase/register.dart';
import 'package:koru/domain/auth/model/user_name.dart';

part 'registration_form_state.freezed.dart';

@freezed
class RegistrationFormState with _$RegistrationFormState {
  const factory RegistrationFormState({
    required Either<InputDataFailure, UserName> userName,
    required Either<InputDataFailure, EmailAddress> emailAddress,
    required Either<InputDataFailure, Password> password,
    required Either<InputDataFailure, Password> confirmPassword,
    required Option<Either<RegisterFailure, Unit>> registrationResult,
    required bool isSubmitting,
  }) = _RegistrationFormState;

  factory RegistrationFormState.initial() => RegistrationFormState(
        userName: left(const InputDataFailure.shortName()),
        emailAddress: left(const InputDataFailure.emptyEmail()),
        password: left(const InputDataFailure.shortPassword()),
        confirmPassword: left(const InputDataFailure.shortPassword()),
        registrationResult: none(),
        isSubmitting: false,
      );
}

class RegistrationFormNotifier extends StateNotifier<RegistrationFormState> {
  final AuthService authService;

  RegistrationFormNotifier({required this.authService})
      : super(RegistrationFormState.initial());

  void userNameChanged(String userName) {
    state = state.copyWith(
      userName: UserName.build(userName.trim()),
      registrationResult: none(),
    );
  }

  void emailChanged(String email) {
    state = state.copyWith(
      emailAddress: EmailAddress.build(email.trim()),
      registrationResult: none(),
    );
  }

  void passwordChanged(String password) {
    state = state.copyWith(
      password: Password.build(password.trim()),
      registrationResult: none(),
    );
  }

  void confirmPasswordChanged(String password) {
    state = state.copyWith(
      confirmPassword: Password.build(password.trim()),
      registrationResult: none(),
    );
  }

  void registrationRequested() async {
    state = state.copyWith(
      isSubmitting: true,
      registrationResult: none(),
    );
    final email = state.emailAddress.getOrElse(() => throw Error()).value;
    final password = state.password.getOrElse(() => throw Error()).value;
    final userName = state.userName.getOrElse(() => throw Error()).value;
    final confirmPassword =
        state.confirmPassword.getOrElse(() => throw Error()).value;
    final res = await register(
      email: email,
      password: password,
      confirmPassword: confirmPassword,
      userName: userName,
      authService: authService,
    );
    state = state.copyWith(
      registrationResult: some(res),
      isSubmitting: false,
    );
  }
}

final registrationFormStateProvider =
    StateNotifierProvider<RegistrationFormNotifier, RegistrationFormState>(
  (ref) {
    final auth = ref.watch(authProvider);
    return RegistrationFormNotifier(authService: auth);
  },
);

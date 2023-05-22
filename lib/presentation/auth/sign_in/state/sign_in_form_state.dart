import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:koru/application/providers.dart';
import 'package:koru/domain/auth/auth_service.dart';
import 'package:koru/domain/auth/model/auth_user.dart';
import 'package:koru/domain/auth/model/email_address.dart';
import 'package:koru/domain/common/failures.dart';
import 'package:koru/domain/auth/model/password.dart';
import 'package:koru/domain/auth/usecase/sign_in.dart';
import 'package:koru/domain/store/koru_state_service.dart';

part 'sign_in_form_state.freezed.dart';

@freezed
class SignInFormState with _$SignInFormState {
  const factory SignInFormState({
    required Either<InputDataFailure, EmailAddress> emailAddress,
    required Either<InputDataFailure, Password> password,
    required Option<Either<SignInFailure, AuthUser>> signInResult,
    required bool isSubmitting,
  }) = _SignInFormState;

  factory SignInFormState.initial() => SignInFormState(
        emailAddress: left(const InputDataFailure.emptyEmail()),
        password: left(const InputDataFailure.shortPassword()),
        signInResult: none(),
        isSubmitting: false,
      );
}

class SignInFormNotifier extends StateNotifier<SignInFormState> {
  final AuthService authService;
  final KoruStateService localStateService;

  SignInFormNotifier(
      {required this.authService, required this.localStateService})
      : super(SignInFormState.initial());

  void emailChanged(String email) {
    state = state.copyWith(
      emailAddress: EmailAddress.build(email.trim()),
      signInResult: none(),
    );
  }

  void passwordChanged(String password) {
    state = state.copyWith(
      password: Password.build(password.trim()),
      signInResult: none(),
    );
  }

  void signInRequested() async {
    state = state.copyWith(
      isSubmitting: true,
      signInResult: none(),
    );
    final email = state.emailAddress.getOrElse(() => throw Error()).value;
    final password = state.password.getOrElse(() => throw Error()).value;
    final res = await sign_in(
      email: email,
      password: password,
      authService: authService,
      stateService: localStateService,
    );
    state = state.copyWith(
      signInResult: some(res),
      isSubmitting: false,
    );
  }
}

final signInFormStateProvider =
    StateNotifierProvider<SignInFormNotifier, SignInFormState>(
  (ref) {
    final auth = ref.watch(authProvider);
    final local = ref.watch(koruStateService);
    return SignInFormNotifier(authService: auth, localStateService: local);
  },
);

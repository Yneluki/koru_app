import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:koru/domain/auth/model/auth_token.dart';
import 'package:koru/domain/auth/model/auth_user.dart';
import 'package:koru/domain/auth/model/email_address.dart';
import 'package:koru/domain/auth/model/password.dart';
import 'package:koru/domain/auth/model/user_name.dart';
import 'package:uuid/uuid.dart';

part 'auth_service.freezed.dart';

abstract class AuthService {
  Future<Either<AuthServerFailure, Unit>> register({
    required EmailAddress email,
    required Password password,
    required UserName userName,
  });
  Future<Either<AuthServerFailure, AuthUser>> sign_in({
    required EmailAddress email,
    required Password password,
  });

  Option<AuthUser> get_signed_in_user();

  void set_signed_in_user(Option<AuthUser> user);
}

@freezed
class AuthServerFailure with _$AuthServerFailure {
  const factory AuthServerFailure.validation({
    required String error,
  }) = Validation;
  const factory AuthServerFailure.unauthorized() = Unauthorized;
  const factory AuthServerFailure.internal() = Internal;
  const factory AuthServerFailure.network({
    required String error,
  }) = Network;
}

extension AuthServerFailureX on AuthServerFailure {
  String errorMessage() {
    return when(
      validation: (error) => "Server validation failure: $error.",
      internal: () => "Failed due to a server error.",
      network: (error) => "Failed due to a network error: $error.",
      unauthorized: () => "Invalid email or password.",
    );
  }
}

class FakeAuthService extends AuthService {
  bool validationError = false;
  bool internalError = false;
  bool unauthorized = false;

  Option<AuthUser> signed_in_user = none();

  @override
  Future<Either<AuthServerFailure, Unit>> register({
    required EmailAddress email,
    required Password password,
    required UserName userName,
  }) async {
    if (validationError) {
      return left(
          const AuthServerFailure.validation(error: 'Validation error'));
    }
    if (internalError) {
      return left(const AuthServerFailure.internal());
    }
    return right(unit);
  }

  @override
  Future<Either<AuthServerFailure, AuthUser>> sign_in(
      {required EmailAddress email, required Password password}) async {
    if (validationError) {
      return left(
          const AuthServerFailure.validation(error: 'Validation error'));
    }
    if (internalError) {
      return left(const AuthServerFailure.internal());
    }
    if (unauthorized) {
      return left(const AuthServerFailure.unauthorized());
    }
    final user = AuthUser(
      id: UuidValue(const Uuid().v4()),
      token: const AuthToken('auth_token'),
    );
    signed_in_user = some(user);
    return right(user);
  }

  @override
  Option<AuthUser> get_signed_in_user() {
    return signed_in_user;
  }

  @override
  void set_signed_in_user(Option<AuthUser> user) {
    signed_in_user = user;
  }
}

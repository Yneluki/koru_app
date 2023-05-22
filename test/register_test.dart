import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:koru/domain/auth/auth_service.dart';
import 'package:koru/domain/common/failures.dart';
import 'package:koru/domain/auth/usecase/register.dart';

void main() {
  late FakeAuthService authService;
  setUp(() {
    authService = FakeAuthService();
  });
  test(
      'registration should return invalid email failure given invalid email adress',
      () async {
    final res = await register(
        email: 'a',
        password: '12345678',
        confirmPassword: '12345678',
        userName: 'name',
        authService: authService);
    expect(res.isLeft(), true);
    final failures = res.fold(
        (l) => l.maybeWhen(
            orElse: () => List<InputDataFailure>.empty(),
            invalidData: (failures) => failures),
        (r) => List<InputDataFailure>.empty());
    expect(failures.length, 1);
    expect(
        failures[0].maybeWhen(orElse: () => false, invalidEmail: (_) => true),
        true);
  });
  test(
      'registration should return empty email failure given empty email adress',
      () async {
    final res = await register(
        email: '',
        password: '12345678',
        confirmPassword: '12345678',
        userName: 'name',
        authService: authService);
    expect(res.isLeft(), true);
    final failures = res.fold(
        (l) => l.maybeWhen(
            orElse: () => List<InputDataFailure>.empty(),
            invalidData: (failures) => failures),
        (r) => List<InputDataFailure>.empty());
    expect(failures.length, 1);
    expect(failures[0].maybeWhen(orElse: () => false, emptyEmail: () => true),
        true);
  });
  test('registration should return short password failure given short password',
      () async {
    final res = await register(
        email: 'a@a.com',
        password: '',
        confirmPassword: '',
        userName: 'name',
        authService: authService);
    expect(res.isLeft(), true);
    final failures = res.fold(
        (l) => l.maybeWhen(
            orElse: () => List<InputDataFailure>.empty(),
            invalidData: (failures) => failures),
        (r) => List<InputDataFailure>.empty());
    expect(failures.length, 2);
    expect(
        failures[0].maybeWhen(orElse: () => false, shortPassword: () => true),
        true);
    expect(
        failures[1].maybeWhen(orElse: () => false, shortPassword: () => true),
        true);
  });
  test(
      'registration should return password do not match failure given not matching passwords',
      () async {
    final res = await register(
        email: 'a@a.com',
        password: '123456789',
        confirmPassword: '12345678',
        userName: 'name',
        authService: authService);
    expect(res.isLeft(), true);
    final failures = res.fold(
        (l) => l.maybeWhen(
            orElse: () => List<InputDataFailure>.empty(),
            invalidData: (failures) => failures),
        (r) => List<InputDataFailure>.empty());
    expect(failures.length, 1);
    expect(
        failures[0]
            .maybeWhen(orElse: () => false, passwordsDoNotMatch: () => true),
        true);
  });
  test('registration should return short name failure given short name',
      () async {
    final res = await register(
        email: 'a@a.com',
        password: '12345678',
        confirmPassword: '12345678',
        userName: '',
        authService: authService);
    expect(res.isLeft(), true);
    final failures = res.fold(
        (l) => l.maybeWhen(
            orElse: () => List<InputDataFailure>.empty(),
            invalidData: (failures) => failures),
        (r) => List<InputDataFailure>.empty());
    expect(failures.length, 1);
    expect(failures[0].maybeWhen(orElse: () => false, shortName: () => true),
        true);
  });
  test('registration should return long name failure given long name',
      () async {
    final res = await register(
        email: 'a@a.com',
        password: '12345678',
        confirmPassword: '12345678',
        userName: 'this is too long for a username maximum is 50 characters',
        authService: authService);
    expect(res.isLeft(), true);
    final failures = res.fold(
        (l) => l.maybeWhen(
            orElse: () => List<InputDataFailure>.empty(),
            invalidData: (failures) => failures),
        (r) => List<InputDataFailure>.empty());
    expect(failures.length, 1);
    expect(
        failures[0].maybeWhen(orElse: () => false, longName: () => true), true);
  });
  test(
      'registration should return server validation failure given error from auth service',
      () async {
    authService.validationError = true;
    final res = await register(
        email: 'a@a.com',
        password: '12345678',
        confirmPassword: '12345678',
        userName: 'name',
        authService: authService);
    expect(res.isLeft(), true);
    final serverFailure = res.fold(
        (l) => l.maybeWhen(
            orElse: () => none<AuthServerFailure>(),
            authServerError: (fail) => some(fail)),
        (r) => none<AuthServerFailure>());
    expect(serverFailure.isSome(), true);
    expect(
        serverFailure
            .map((a) =>
                a.maybeWhen(orElse: () => false, validation: (_) => true))
            .getOrElse(() => false),
        true);
  });
  test(
      'registration should return server internal failure given error from auth service',
      () async {
    authService.internalError = true;
    final res = await register(
        email: 'a@a.com',
        password: '12345678',
        confirmPassword: '12345678',
        userName: 'name',
        authService: authService);
    expect(res.isLeft(), true);
    final serverFailure = res.fold(
        (l) => l.maybeWhen(
            orElse: () => none<AuthServerFailure>(),
            authServerError: (fail) => some(fail)),
        (r) => none<AuthServerFailure>());
    expect(serverFailure.isSome(), true);
    expect(
        serverFailure
            .map((a) => a.maybeWhen(orElse: () => false, internal: () => true))
            .getOrElse(() => false),
        true);
  });
  test('registration should succeed given valid inputs', () async {
    final res = await register(
        email: 'a@a.com',
        password: '12345678',
        confirmPassword: '12345678',
        userName: 'name',
        authService: authService);
    expect(res.isRight(), true);
  });
}

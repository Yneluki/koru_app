import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:koru/domain/auth/auth_service.dart';
import 'package:koru/domain/auth/usecase/sign_in.dart';
import 'package:koru/domain/common/failures.dart';
import 'package:koru/domain/group/group_repository.dart';
import 'package:koru/domain/device/device_service.dart';
import 'package:koru/domain/settlement/settlement_repository.dart';
import 'package:koru/domain/store/koru_state_repository.dart';
import 'package:koru/domain/store/koru_state_service.dart';

void main() {
  late FakeAuthService authService;
  late FakeDeviceService deviceService;
  late FakeLocalStateService stateService;
  late FakeKoruStateRepository stateRepository;
  late FakeGroupRepository groupRepository;
  late FakeSettlementRepository stlRepo;
  setUp(() {
    authService = FakeAuthService();
    deviceService = FakeDeviceService();
    stateRepository = FakeKoruStateRepository();
    stlRepo = FakeSettlementRepository();
    groupRepository = FakeGroupRepository();
    stateService = FakeLocalStateService(
      koruStateRepository: stateRepository,
      deviceService: deviceService,
      authService: authService,
      groupRepository: groupRepository,
      settlementRepository: stlRepo,
    );
  });
  test('sign in should return invalid email failure given invalid email adress',
      () async {
    final res = await sign_in(
      email: 'a',
      password: '12345678',
      authService: authService,
      stateService: stateService,
    );
    expect(res.isLeft(), true);
    final failures = res.fold(
        (l) => l.maybeWhen(
            orElse: () => List<InputDataFailure>.empty(),
            invalidData: (failures) => failures),
        (r) => List<InputDataFailure>.empty());
    expect(failures.length, 1);
    expect(
        failures[0].maybeWhen(
          orElse: () => false,
          invalidEmail: (_) => true,
        ),
        true);
  });
  test('sign in should return empty email failure given empty email adress',
      () async {
    final res = await sign_in(
      email: '',
      password: '12345678',
      authService: authService,
      stateService: stateService,
    );
    expect(res.isLeft(), true);
    final failures = res.fold(
        (l) => l.maybeWhen(
            orElse: () => List<InputDataFailure>.empty(),
            invalidData: (failures) => failures),
        (r) => List<InputDataFailure>.empty());
    expect(failures.length, 1);
    expect(
        failures[0].maybeWhen(
          orElse: () => false,
          emptyEmail: () => true,
        ),
        true);
  });
  test('sign in should return short password failure given short password',
      () async {
    final res = await sign_in(
      email: 'a@a.com',
      password: '',
      authService: authService,
      stateService: stateService,
    );
    expect(res.isLeft(), true);
    final failures = res.fold(
        (l) => l.maybeWhen(
            orElse: () => List<InputDataFailure>.empty(),
            invalidData: (failures) => failures),
        (r) => List<InputDataFailure>.empty());
    expect(failures.length, 1);
    expect(
        failures[0].maybeWhen(
          orElse: () => false,
          shortPassword: () => true,
        ),
        true);
  });
  test(
      'sign in should return server validation failure given error from auth service',
      () async {
    authService.validationError = true;
    final res = await sign_in(
      email: 'a@a.com',
      password: '12345678',
      authService: authService,
      stateService: stateService,
    );
    expect(res.isLeft(), true);
    final serverFailure = res.fold(
        (l) => l.maybeWhen(
            orElse: () => none<AuthServerFailure>(),
            authServerError: (fail) => some(fail)),
        (r) => none<AuthServerFailure>());
    expect(serverFailure.isSome(), true);
    expect(
        serverFailure
            .map((a) => a.maybeWhen(
                  orElse: () => false,
                  validation: (_) => true,
                ))
            .getOrElse(() => false),
        true);
  });
  test(
      'sign in should return server internal failure given error from auth service',
      () async {
    authService.internalError = true;
    final res = await sign_in(
      email: 'a@a.com',
      password: '12345678',
      authService: authService,
      stateService: stateService,
    );
    expect(res.isLeft(), true);
    final serverFailure = res.fold(
        (l) => l.maybeWhen(
            orElse: () => none<AuthServerFailure>(),
            authServerError: (fail) => some(fail)),
        (r) => none<AuthServerFailure>());
    expect(serverFailure.isSome(), true);
    expect(
        serverFailure
            .map((a) => a.maybeWhen(
                  orElse: () => false,
                  internal: () => true,
                ))
            .getOrElse(() => false),
        true);
  });
  test(
      'sign in should return unauthorized failure given error from auth service',
      () async {
    authService.unauthorized = true;
    final res = await sign_in(
      email: 'a@a.com',
      password: '12345678',
      authService: authService,
      stateService: stateService,
    );
    expect(res.isLeft(), true);
    final serverFailure = res.fold(
        (l) => l.maybeWhen(
            orElse: () => none<AuthServerFailure>(),
            authServerError: (fail) => some(fail)),
        (r) => none<AuthServerFailure>());
    expect(serverFailure.isSome(), true);
    expect(
        serverFailure
            .map((a) => a.maybeWhen(
                  orElse: () => false,
                  unauthorized: () => true,
                ))
            .getOrElse(() => false),
        true);
  });
  test('sign in should return an auth token given valid inputs', () async {
    final res = await sign_in(
      email: 'a@a.com',
      password: '12345678',
      authService: authService,
      stateService: stateService,
    );
    expect(res.isRight(), true);
    final user = res.fold((l) => throw Error(), id);
    expect(authService.get_signed_in_user(), some(user));
  });
}

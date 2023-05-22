import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:koru/domain/auth/auth_service.dart';
import 'package:koru/domain/auth/model/auth_token.dart';
import 'package:koru/domain/auth/model/auth_user.dart';
import 'package:koru/domain/common/failures.dart';
import 'package:koru/domain/group/group_repository.dart';
import 'package:koru/domain/group/usecase/create_group.dart';
import 'package:koru/domain/device/device_service.dart';
import 'package:koru/domain/settlement/settlement_repository.dart';
import 'package:koru/domain/store/koru_state_repository.dart';
import 'package:koru/domain/store/koru_state_service.dart';
import 'package:uuid/uuid.dart';

void main() {
  late FakeGroupRepository groupRepo;
  late FakeAuthService authService;
  late FakeDeviceService deviceService;
  late FakeLocalStateService stateService;
  late FakeKoruStateRepository stateRepository;
  late FakeSettlementRepository stlRepo;
  final signedInUser = AuthUser(
    id: UuidValue(const Uuid().v4()),
    token: const AuthToken('token'),
  );
  setUp(() {
    authService = FakeAuthService();
    deviceService = FakeDeviceService();
    groupRepo = FakeGroupRepository();
    stlRepo = FakeSettlementRepository();
    stateRepository = FakeKoruStateRepository();
    stateService = FakeLocalStateService(
      koruStateRepository: stateRepository,
      deviceService: deviceService,
      authService: authService,
      groupRepository: groupRepo,
      settlementRepository: stlRepo,
    );
  });
  test('create group should fail given an empty group name', () async {
    final res = await create_group(
      name: '',
      red: 255,
      green: 255,
      blue: 255,
      authService: authService,
      stateService: stateService,
      repository: groupRepo,
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
          emptyGroupName: () => true,
        ),
        true);
  });
  test(
      'create group should fail with unauthorized error given without an authenticated user',
      () async {
    groupRepo.validationError = true;
    final res = await create_group(
      name: 'My Group',
      red: 255,
      green: 255,
      blue: 255,
      authService: authService,
      stateService: stateService,
      repository: groupRepo,
    );
    expect(res.isLeft(), true);
    final repoFailure = res.fold(
        (l) => l.maybeWhen(
            orElse: () => none<GroupRepositoryFailure>(),
            groupRepositoryError: (fail) => some(fail)),
        (r) => none<GroupRepositoryFailure>());
    expect(repoFailure.isSome(), true);
    expect(
        repoFailure
            .map((a) => a.maybeWhen(
                  orElse: () => false,
                  unauthorized: () => true,
                ))
            .getOrElse(() => false),
        true);
  });
  test(
      'create group should fail with server validation error given a group repository error',
      () async {
    authService.signed_in_user = some(signedInUser);
    groupRepo.validationError = true;
    final res = await create_group(
      name: 'My Group',
      red: 255,
      green: 255,
      blue: 255,
      authService: authService,
      stateService: stateService,
      repository: groupRepo,
    );
    expect(res.isLeft(), true);
    final repoFailure = res.fold(
        (l) => l.maybeWhen(
            orElse: () => none<GroupRepositoryFailure>(),
            groupRepositoryError: (fail) => some(fail)),
        (r) => none<GroupRepositoryFailure>());
    expect(repoFailure.isSome(), true);
    expect(
        repoFailure
            .map((a) => a.maybeWhen(
                  orElse: () => false,
                  validation: (_) => true,
                ))
            .getOrElse(() => false),
        true);
  });
  test(
      'create group should fail with server internal error given a group repository error',
      () async {
    authService.signed_in_user = some(signedInUser);
    groupRepo.internalError = true;
    final res = await create_group(
      name: 'My Group',
      red: 255,
      green: 255,
      blue: 255,
      authService: authService,
      stateService: stateService,
      repository: groupRepo,
    );
    expect(res.isLeft(), true);
    final repoFailure = res.fold(
        (l) => l.maybeWhen(
            orElse: () => none<GroupRepositoryFailure>(),
            groupRepositoryError: (fail) => some(fail)),
        (r) => none<GroupRepositoryFailure>());
    expect(repoFailure.isSome(), true);
    expect(
        repoFailure
            .map((a) => a.maybeWhen(
                  orElse: () => false,
                  internal: () => true,
                ))
            .getOrElse(() => false),
        true);
  });
  test('create group should return a new group', () async {
    authService.signed_in_user = some(signedInUser);
    final res = await create_group(
      name: 'My Group',
      red: 255,
      green: 255,
      blue: 255,
      authService: authService,
      stateService: stateService,
      repository: groupRepo,
    );
    expect(res.isRight(), true);
  });
}

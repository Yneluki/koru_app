import 'package:dartz/dartz.dart';
import 'package:koru/domain/auth/auth_service.dart';
import 'package:koru/domain/auth/model/auth_user.dart';
import 'package:koru/domain/common/loadable.dart';
import 'package:koru/domain/group/group_repository.dart';
import 'package:koru/domain/group/usecase/fetch_group.dart';
import 'package:koru/domain/group/usecase/fetch_groups.dart';
import 'package:koru/domain/device/device_service.dart';
import 'package:koru/domain/settlement/settlement_repository.dart';
import 'package:koru/domain/settlement/usecase/fetch_settlements.dart';
import 'package:koru/domain/store/koru_state.dart';
import 'package:koru/domain/store/koru_state_repository.dart';
import 'package:uuid/uuid.dart';

abstract class KoruStateService {
  final KoruStateRepository koruStateRepository;
  final GroupRepository groupRepository;
  final SettlementRepository settlementRepository;
  final AuthService authService;
  final DeviceService deviceService;

  KoruState _state = KoruState.initial();

  KoruStateService({
    required this.koruStateRepository,
    required this.authService,
    required this.deviceService,
    required this.groupRepository,
    required this.settlementRepository,
  }) {
    _loadFromRepository();
  }

  void stateChanged(KoruState newState);

  set state(KoruState newState) {
    _state = newState;
    stateChanged(_state);
  }

  Future<void> _loadFromRepository() async {
    state = await koruStateRepository.load();
    authService.set_signed_in_user(_state.user);
    await _loadGroups();
    await _loadGroup();
    await _loadSettlements();
  }

  Future<void> _loadGroups() async {
    _state.user.fold(
      () => null,
      (a) async {
        state = _state.copyWith(groups: const LoadableLoading());
        final groups = await fetch_groups(
          authService: authService,
          repository: groupRepository,
        );
        groups.fold((l) {
          l.when(
              groupRepositoryError: (e) => e.maybeWhen(
                    orElse: () {
                      state = _state.copyWith(
                        groups: LoadableError(l),
                      );
                    },
                    unauthorized: () => sessionTimeout(),
                  ));
        }, (r) {
          state = _state.copyWith(
            groups: LoadableData(data: r),
          );
        });
      },
    );
  }

  Future<void> _loadSettlements() async {
    _state.groupId.fold(
      () => null,
      (groupId) async {
        state = _state.copyWith(settlements: const LoadableLoading());
        final groups = await fetch_settlements(
          groupId: groupId,
          authService: authService,
          repository: settlementRepository,
        );
        groups.fold((l) {
          l.when(
              settlementRepositoryError: (e) => e.maybeWhen(
                    orElse: () {
                      state = _state.copyWith(
                        settlements: LoadableError(l),
                      );
                    },
                    unauthorized: () => sessionTimeout(),
                  ));
        }, (r) {
          state = _state.copyWith(
            settlements: LoadableData(data: r),
          );
        });
      },
    );
  }

  Future<void> _loadGroup() async {
    _state.groupId.fold(
      () => null,
      (groupId) async {
        state = _state.copyWith(group: const LoadableLoading());
        final group = await fetch_group(
          groupId: groupId,
          authService: authService,
          repository: groupRepository,
        );
        group.fold((l) {
          l.when(
              groupRepositoryError: (e) => e.maybeWhen(
                    orElse: () {
                      state = _state.copyWith(
                        group: LoadableError(l),
                      );
                    },
                    unauthorized: () => sessionTimeout(),
                  ));
        }, (r) {
          state = _state.copyWith(
            group: LoadableData(data: r),
          );
        });
      },
    );
  }

  Future<void> _saveToStorage() async {
    await koruStateRepository.save(state: _state);
  }

  void userSignedIn(AuthUser user) {
    state = _state.copyWith(
      user: some(user),
      sessionTimeout: false,
    );
    _registerDevice(user);
    _loadGroups();
    _saveToStorage();
  }

  Future<void> _registerDevice(AuthUser user) async {
    final res = await deviceService.register(user: user);
    res.fold(
      (l) => {
        l.maybeWhen(
          orElse: () {
            print("device registration failed: $l");
          },
          unauthorized: () => sessionTimeout(),
        )
      },
      (r) => print("device registered"),
    );
  }

  Future<void> groupSelected(UuidValue groupId) async {
    state = _state.copyWith(groupId: some(groupId));
    await _loadGroup();
    await _loadSettlements();
    _saveToStorage();
  }

  void groupUnSelected() {
    state = _state.copyWith(
      groupId: none(),
      group: const LoadableLoading(),
      settlements: const LoadableLoading(),
    );
    _saveToStorage();
  }

  void logout() {
    _state.user.fold(
      () => null,
      (user) => deviceService.unregister(user: user),
    );
    state = _state.copyWith(
      user: none(),
      groupId: none(),
      group: const LoadableLoading(),
      groups: const LoadableLoading(),
      settlements: const LoadableLoading(),
    );
    authService.set_signed_in_user(_state.user);
    _saveToStorage();
  }

  void sessionTimeout() {
    state = _state.copyWith(
      user: none(),
      groupId: none(),
      group: const LoadableLoading(),
      groups: const LoadableLoading(),
      settlements: const LoadableLoading(),
      sessionTimeout: true,
    );
    authService.set_signed_in_user(_state.user);
    _saveToStorage();
  }

  Future<void> groupCreated() async {
    await _loadGroups();
  }

  Future<void> groupJoined() async {
    await _loadGroups();
  }

  Future<void> groupDeleted() async {
    await _loadGroups();
  }

  Future<void> expenseCreated() async {
    await _loadGroup();
  }

  Future<void> expenseDeleted() async {
    await _loadGroup();
  }

  Future<void> expenseUpdated() async {
    await _loadGroup();
  }

  Future<void> settled() async {
    await _loadGroup();
    await _loadSettlements();
  }

  Future<void> colorChanged() async {
    await _loadGroups();
    await _loadGroup();
  }
}

class FakeLocalStateService extends KoruStateService {
  FakeLocalStateService({
    required super.koruStateRepository,
    required super.authService,
    required super.deviceService,
    required super.groupRepository,
    required super.settlementRepository,
  });

  @override
  void stateChanged(KoruState newState) {
    // TODO: implement stateChanged
  }
}

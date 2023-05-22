import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:koru/application/config.dart';
import 'package:koru/domain/auth/auth_service.dart';
import 'package:koru/domain/expense/expense_repository.dart';
import 'package:koru/domain/group/group_repository.dart';
import 'package:koru/domain/device/device_service.dart';
import 'package:koru/domain/settlement/settlement_repository.dart';
import 'package:koru/domain/store/koru_state.dart';
import 'package:koru/domain/store/koru_state_repository.dart';
import 'package:koru/domain/store/koru_state_service.dart';
import 'package:koru/infrastructure/auth/auth_service.dart';
import 'package:koru/infrastructure/device/device_service.dart';
import 'package:koru/infrastructure/expense/expense_api.dart';
import 'package:koru/infrastructure/expense/expense_repository.dart';
import 'package:koru/infrastructure/group/group_api.dart';
import 'package:koru/infrastructure/group/group_repository.dart';
import 'package:koru/infrastructure/settlement/settlement_api.dart';
import 'package:koru/infrastructure/settlement/settlement_repository.dart';
import 'package:koru/infrastructure/store/koru_state_repository.dart';
import 'package:koru/infrastructure/store/koru_state_service.dart';

final authProvider = Provider<AuthService>(
  (ref) => KoruAuthService(
    baseUrl: EnvironmentConfig.BASE_URL,
  ),
);

final groupApiProvider = Provider<KoruGroupApi>(
  (ref) => KoruGroupApi(
    baseUrl: EnvironmentConfig.BASE_URL,
  ),
);

final groupRepositoryProvider = Provider<GroupRepository>(
  (ref) => KoruGroupRepository(
    api: ref.watch(groupApiProvider),
  ),
);

final expenseApiProvider = Provider<KoruExpenseApi>(
  (ref) => KoruExpenseApi(
    baseUrl: EnvironmentConfig.BASE_URL,
  ),
);

final expenseRepositoryProvider = Provider<ExpenseRepository>(
  (ref) => KoruExpenseRepository(
    api: ref.watch(expenseApiProvider),
  ),
);

final settlementApiProvider = Provider<KoruSettlementApi>(
  (ref) => KoruSettlementApi(
    baseUrl: EnvironmentConfig.BASE_URL,
  ),
);

final settlementRepositoryProvider = Provider<SettlementRepository>(
  (ref) => KoruSettlementRepository(
    api: ref.watch(settlementApiProvider),
  ),
);

final localStorage = Provider<KoruStateRepository>(
  (ref) => SecureStorageStateRepository(),
);

final koruStateService = Provider<KoruStateService>(
  (ref) => RiverpodStateService(
    koruStateRepository: ref.watch(localStorage),
    authService: ref.watch(authProvider),
    deviceService: ref.watch(deviceService),
    groupRepository: ref.watch(groupRepositoryProvider),
    settlementRepository: ref.watch(settlementRepositoryProvider),
    stateNotifier: ref.watch(koruState.notifier),
  ),
);

final koruState = StateNotifierProvider<KoruStateNotifier, KoruState>(
  (ref) => KoruStateNotifier(),
);

final deviceService = Provider<DeviceService>(
  (ref) => PushyDeviceService(
    baseUrl: EnvironmentConfig.BASE_URL,
  ),
);

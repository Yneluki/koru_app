import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:koru/domain/store/koru_state.dart';
import 'package:koru/domain/store/koru_state_service.dart';

class RiverpodStateService extends KoruStateService {
  KoruStateNotifier stateNotifier;

  RiverpodStateService({
    required super.koruStateRepository,
    required super.authService,
    required super.deviceService,
    required super.groupRepository,
    required super.settlementRepository,
    required this.stateNotifier,
  });

  @override
  void stateChanged(KoruState newState) {
    stateNotifier.updateState(newState);
  }
}

class KoruStateNotifier extends StateNotifier<KoruState> {
  KoruStateNotifier() : super(KoruState.initial());

  void updateState(KoruState newState) {
    state = newState;
  }
}

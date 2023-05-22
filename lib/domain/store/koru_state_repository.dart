import 'package:koru/domain/store/koru_state.dart';

abstract class KoruStateRepository {
  Future<KoruState> load();
  Future<void> save({
    required KoruState state,
  });
}

class FakeKoruStateRepository extends KoruStateRepository {
  KoruState storedState = KoruState.initial();

  @override
  Future<KoruState> load() async {
    storedState = storedState.copyWith(isLoading: false);
    return storedState;
  }

  @override
  Future<void> save({required KoruState state}) async {
    storedState = state;
  }
}

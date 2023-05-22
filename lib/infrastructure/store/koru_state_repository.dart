import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:koru/domain/store/koru_state.dart';
import 'package:koru/domain/store/koru_state_repository.dart';

class SecureStorageStateRepository extends KoruStateRepository {
  final FlutterSecureStorage storage = const FlutterSecureStorage();

  SecureStorageStateRepository();

  @override
  Future<KoruState> load() async {
    final storedData = await storage.readAll();
    return KoruState.fromStorage(storedData);
  }

  @override
  Future<void> save({required KoruState state}) async {
    final dataToStore = state.toStorage();
    await storage.deleteAll();
    dataToStore.forEach((key, value) async {
      await storage.write(key: key, value: value);
    });
  }
}

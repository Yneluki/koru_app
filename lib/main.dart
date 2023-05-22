import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:koru/application/providers.dart';
import 'package:koru/infrastructure/notification/notification_service.dart';
import 'package:koru/presentation/koru_app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  final container = ProviderContainer();
  final _ = PushyNotificationService();
  container.read(koruStateService);
  runApp(UncontrolledProviderScope(
    container: container,
    child: const KoruApp(),
  ));
}

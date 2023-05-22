import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:koru/application/providers.dart';
import 'package:koru/presentation/splash_screen.dart';

class LogoutButton extends ConsumerWidget {
  const LogoutButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return IconButton(
        onPressed: () {
          ref.read(koruStateService).logout();
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (context) => const SplashScreen(),
            ),
          );
        },
        icon: const Icon(Icons.logout));
  }
}

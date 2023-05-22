import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:koru/application/providers.dart';
import 'package:koru/presentation/auth/sign_in/sign_in_page.dart';
import 'package:koru/presentation/groups/group/group_overview_page.dart';
import 'package:koru/presentation/groups/group_list/groups_page.dart';

class SplashScreen extends ConsumerWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loading = ref.watch(koruState.select((value) => value.isLoading));
    if (loading) {
      return Center(
        child: Image.asset(
          'koru.png',
          height: 120,
        ),
      );
    }
    final localState = ref.read(koruState);
    if (localState.user.isNone()) {
      return const SignInPage();
    } else if (localState.groupId.isNone()) {
      return const GroupsPage();
    } else {
      return const GroupOverviewPage();
    }
  }
}

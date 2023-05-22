import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:koru/application/providers.dart';
import 'package:koru/presentation/groups/create_group/create_group_page.dart';
import 'package:koru/presentation/groups/group_list/state/groups_page_state.dart';
import 'package:koru/presentation/groups/group_list/widget/groups_list.dart';
import 'package:koru/presentation/groups/join_group/join_group_page.dart';
import 'package:koru/presentation/misc/loading_overlay.dart';
import 'package:koru/presentation/misc/logout.dart';
import 'package:koru/presentation/splash_screen.dart';

class GroupsPage extends ConsumerWidget {
  const GroupsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(koruState.select((value) => value.user), (_, user) {
      if (user.isNone()) {
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => const SplashScreen()));
      }
    });
    return Scaffold(
      appBar: AppBar(
        title: const Text('Groups'),
        actions: const [
          LogoutButton(),
        ],
      ),
      body: Stack(
        children: [
          Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const JoinGroupPage(),
                      ),
                    ),
                    child: const Text('Join Existing Group'),
                  ),
                ),
                const Expanded(child: GroupsList()),
              ],
            ),
          ),
          LoadingOverlay(
            loadingState: groupsPageStateProvider.select(
              (value) => value.isSubmitting,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () => Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const CreateGroupPage(),
          ),
        ),
      ),
    );
  }
}

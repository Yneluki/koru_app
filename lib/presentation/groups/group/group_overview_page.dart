import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:koru/application/providers.dart';
import 'package:koru/domain/group/usecase/fetch_group.dart';
import 'package:koru/domain/settlement/usecase/settle.dart';
import 'package:koru/presentation/expense/create_expense_page.dart';
import 'package:koru/presentation/groups/group/state/group_overview_page_state.dart';
import 'package:koru/presentation/groups/group/widget/drawer.dart';
import 'package:koru/presentation/groups/group/widget/group_details.dart';
import 'package:koru/presentation/misc/error_card.dart';
import 'package:koru/presentation/misc/loading.dart';
import 'package:koru/presentation/misc/loading_overlay.dart';
import 'package:koru/presentation/misc/logout.dart';
import 'package:koru/presentation/misc/result_listener.dart';
import 'package:koru/presentation/settlement/settlements_page.dart';
import 'package:koru/presentation/splash_screen.dart';

class GroupOverviewPage extends StatelessWidget {
  const GroupOverviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Group Overview'),
        actions: const [
          SettleButton(),
          LogoutButton(),
        ],
      ),
      drawer: const KoruDrawer(),
      body: Stack(
        children: [
          const GroupOverviewBody(),
          LoadingOverlay(
            loadingState: groupOverviewPageStateProvider.select(
              (value) => value.isSubmitting,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () => Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const CreateExpensePage(),
          ),
        ),
      ),
    );
  }
}

class GroupOverviewBody extends ConsumerWidget {
  const GroupOverviewBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(koruState.select((value) => value.user), (_, user) {
      if (user.isNone()) {
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => const SplashScreen()));
      }
    });
    listenForResult(
        context,
        ref,
        groupOverviewPageStateProvider.select((value) => value.settleResult),
        (r) => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const SettlementsPage(),
              ),
            ),
        (f) => f.errorMessage());
    final groupState = ref.watch(
      koruState.select((state) => state.group),
    );
    return groupState.when(
      data: (details) => GroupDetails(groupDetails: details),
      error: (failure) => ErrorCard(errorMessage: failure.errorMessage()),
      loading: () => const Loading(),
    );
  }
}

class SettleButton extends ConsumerWidget {
  const SettleButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return IconButton(
      onPressed: () =>
          ref.read(groupOverviewPageStateProvider.notifier).settleRequested(),
      icon: const Icon(Icons.lock),
    );
  }
}

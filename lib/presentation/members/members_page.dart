import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:koru/domain/group/usecase/generate_group_token.dart';
import 'package:koru/presentation/members/state/members_page_state.dart';
import 'package:koru/presentation/members/widget/members_list.dart';
import 'package:koru/presentation/misc/loading_overlay.dart';
import 'package:koru/presentation/misc/result_listener.dart';
import 'package:koru/presentation/misc/snackbar.dart';

class MembersPage extends ConsumerWidget {
  const MembersPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    listenForResult(
        context,
        ref,
        membersPageStateProvider.select((value) => value.generateTokenResult),
        (r) => Clipboard.setData(ClipboardData(text: r)).then(
              (_) async {
                showSuccessSnackBar(
                  context,
                  'Token copied to your clipboard.\nIt is valid for 15 minutes.',
                );
              },
            ),
        (f) => f.errorMessage());
    return Scaffold(
      appBar: AppBar(title: const Text('Members')),
      body: Stack(
        children: [
          Column(
            children: [
              const Expanded(child: MembersList()),
              const Divider(thickness: 4.0),
              ElevatedButton(
                onPressed: () {
                  ref
                      .read(membersPageStateProvider.notifier)
                      .generateTokenRequested();
                },
                child: const Text('Generate invite token'),
              ),
              const SizedBox(
                height: 10.0,
              ),
            ],
          ),
          LoadingOverlay(
            loadingState: membersPageStateProvider.select(
              (value) => value.isSubmitting,
            ),
          ),
        ],
      ),
    );
  }
}

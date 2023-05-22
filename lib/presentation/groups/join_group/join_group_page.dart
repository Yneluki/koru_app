import 'package:flutter/material.dart';
import 'package:koru/presentation/groups/join_group/join_group_form.dart';
import 'package:koru/presentation/groups/join_group/state/join_group_form_state.dart';
import 'package:koru/presentation/misc/loading_overlay.dart';

class JoinGroupPage extends StatelessWidget {
  const JoinGroupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Join a group')),
      body: Stack(
        children: [
          const SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: JoinGroupForm(),
            ),
          ),
          LoadingOverlay(
            loadingState: joinGroupFormStateProvider.select(
              (value) => value.isSubmitting,
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:koru/presentation/groups/create_group/create_group_form.dart';
import 'package:koru/presentation/groups/create_group/state/create_group_form_state.dart';
import 'package:koru/presentation/misc/loading_overlay.dart';

class CreateGroupPage extends StatelessWidget {
  const CreateGroupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Create a group')),
      body: Stack(
        children: [
          const SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: CreateGroupForm(),
            ),
          ),
          LoadingOverlay(
            loadingState: createGroupFormStateProvider.select(
              (value) => value.isSubmitting,
            ),
          ),
        ],
      ),
    );
  }
}

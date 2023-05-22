import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:koru/domain/group/usecase/create_group.dart';
import 'package:koru/presentation/groups/create_group/state/create_group_form_state.dart';
import 'package:koru/presentation/misc/result_listener.dart';

class CreateGroupForm extends ConsumerStatefulWidget {
  const CreateGroupForm({Key? key}) : super(key: key);

  @override
  CreateGroupFormWidgetState createState() {
    return CreateGroupFormWidgetState();
  }
}

class CreateGroupFormWidgetState extends ConsumerState<CreateGroupForm> {
  @override
  void initState() {
    super.initState();
    state();
  }

  CreateGroupFormState state() => ref.read(createGroupFormStateProvider);

  @override
  Widget build(BuildContext context) {
    listenForResult(
        context,
        ref,
        createGroupFormStateProvider.select((value) => value.createGroupResult),
        (r) => Navigator.of(context).pop(),
        (f) => f.errorMessage());
    final formKey = GlobalKey<FormState>();
    final notifier = ref.read(createGroupFormStateProvider.notifier);
    final initialColor = notifier.initialColor();
    return Form(
      key: formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.short_text),
              hintText: 'Enter the group name',
              labelText: 'Group name',
            ),
            onChanged: (value) => notifier.groupNameChanged(value),
            validator: (_) => state().groupName.fold(
                  (f) => f.maybeMap(
                    orElse: () => null,
                    emptyGroupName: (_) => 'Name cannot be empty',
                  ),
                  (r) => null,
                ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          const Text(
            "Choose a color:",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          ColorPicker(
            pickerColor: initialColor,
            enableAlpha: false,
            onColorChanged: (color) =>
                notifier.colorChanged(color.red, color.green, color.blue),
          ),
          const SizedBox(
            height: 20.0,
          ),
          ElevatedButton(
            onPressed: () {
              final res = formKey.currentState!.validate();
              if (res) {
                notifier.createGroupRequested();
              }
            },
            child: const Text("Create"),
          )
        ],
      ),
    );
  }
}

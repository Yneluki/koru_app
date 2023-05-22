import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:koru/domain/group/usecase/join_group.dart';
import 'package:koru/presentation/groups/join_group/state/join_group_form_state.dart';
import 'package:koru/presentation/misc/result_listener.dart';

class JoinGroupForm extends ConsumerStatefulWidget {
  const JoinGroupForm({Key? key}) : super(key: key);

  @override
  JoinGroupFormWidgetState createState() {
    return JoinGroupFormWidgetState();
  }
}

class JoinGroupFormWidgetState extends ConsumerState<JoinGroupForm> {
  @override
  void initState() {
    super.initState();
    state();
  }

  JoinGroupFormState state() => ref.read(joinGroupFormStateProvider);

  @override
  Widget build(BuildContext context) {
    listenForResult(
        context,
        ref,
        joinGroupFormStateProvider.select((value) => value.joinGroupResult),
        (r) => Navigator.of(context).pop(),
        (f) => f.errorMessage());
    final formKey = GlobalKey<FormState>();
    final notifier = ref.read(joinGroupFormStateProvider.notifier);
    final initialColor = notifier.initialColor();
    return Form(
      key: formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.short_text),
              hintText: 'Enter the token',
              labelText: 'Group token',
            ),
            autocorrect: false,
            obscureText: true,
            onChanged: (value) => notifier.groupTokenChanged(value),
            validator: (_) => state().token.fold(
                  (f) => f.maybeMap(
                    orElse: () => null,
                    emptyGroupToken: (_) => 'Token cannot be empty',
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
                notifier.joinGroupRequested();
              }
            },
            child: const Text("Join"),
          )
        ],
      ),
    );
  }
}

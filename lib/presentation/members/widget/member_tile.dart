import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:koru/domain/group/model/group_member.dart';
import 'package:koru/presentation/members/state/members_page_state.dart';
import 'package:koru/presentation/misc/color.dart';

class MemberTile extends ConsumerWidget {
  final GroupMember member;
  const MemberTile({super.key, required this.member});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListTile(
      leading: member.isAdmin
          ? const Icon(
              Icons.school,
              size: 40,
              color: Colors.lightGreen,
            )
          : const Icon(
              Icons.person,
              size: 40,
            ),
      title: Text(member.name.value),
      subtitle: Text(member.email.value),
      trailing: MemberColorSquare(color: member.color),
      enabled: member.activeUser,
      onTap: () {
        final notifier = ref.read(membersPageStateProvider.notifier);
        final initialColor = notifier.initialColor();
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text('Choose a color'),
            content: SingleChildScrollView(
              child: ColorPicker(
                pickerColor: initialColor,
                enableAlpha: false,
                onColorChanged: (color) =>
                    notifier.colorChanged(color.red, color.green, color.blue),
              ),
            ),
            actions: <Widget>[
              ElevatedButton(
                child: const Text('Select'),
                onPressed: () {
                  notifier.changeColorRequested();
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        );
      },
    );
  }
}

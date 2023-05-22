import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:koru/application/providers.dart';
import 'package:koru/domain/group/model/group.dart';
import 'package:koru/presentation/groups/group/group_overview_page.dart';
import 'package:koru/presentation/groups/group_list/state/groups_page_state.dart';

class GroupTile extends ConsumerWidget {
  final Group group;
  const GroupTile({super.key, required this.group});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Slidable(
      endActionPane: ActionPane(
        extentRatio: 0.2,
        motion: const ScrollMotion(),
        children: [
          SlidableAction(
            onPressed: (_) {
              ref.read(groupsPageStateProvider.notifier).groupDeleted(group);
            },
            icon: Icons.delete,
            label: 'Delete',
            backgroundColor: Colors.red,
          )
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Material(
          color: Colors.grey[900],
          borderRadius: BorderRadius.circular(12),
          child: Padding(
            padding: const EdgeInsets.all(2.0),
            child: ListTile(
              leading: const Icon(
                Icons.group,
                color: Colors.lightGreen,
                size: 40,
              ),
              title: Text(group.name.value),
              subtitle: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Members: ${group.members.length}'),
                  Text('Admin: ${group.admin.name.value}'),
                ],
              ),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                ref.read(koruStateService).groupSelected(group.id);
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => const GroupOverviewPage(),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

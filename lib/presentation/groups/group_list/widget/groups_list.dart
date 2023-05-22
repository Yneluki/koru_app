import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:koru/application/providers.dart';
import 'package:koru/domain/group/usecase/delete_group.dart';
import 'package:koru/domain/group/usecase/fetch_groups.dart';
import 'package:koru/presentation/groups/group_list/state/groups_page_state.dart';
import 'package:koru/presentation/groups/group_list/widget/group_tile.dart';
import 'package:koru/presentation/misc/error_card.dart';
import 'package:koru/presentation/misc/loading.dart';
import 'package:koru/presentation/misc/result_listener.dart';

class GroupsList extends ConsumerWidget {
  const GroupsList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    listenForResult(
        context,
        ref,
        groupsPageStateProvider.select((value) => value.deleteGroupResult),
        (r) => null,
        (f) => f.errorMessage());
    final groups = ref.watch(koruState.select((value) => value.groups));
    return groups.when(
      data: (groupList) {
        if (groupList.isEmpty) {
          return const Text('No groups');
        } else {
          return ListView.builder(
            itemBuilder: (context, index) {
              return GroupTile(group: groupList[index]);
            },
            itemCount: groupList.length,
          );
        }
      },
      error: (failure) => ErrorCard(errorMessage: failure.errorMessage()),
      loading: () => const Loading(),
    );
  }
}

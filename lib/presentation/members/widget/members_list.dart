import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:koru/application/providers.dart';
import 'package:koru/domain/group/model/group.dart';
import 'package:koru/domain/group/usecase/fetch_group.dart';
import 'package:koru/presentation/members/widget/member_tile.dart';
import 'package:koru/presentation/misc/error_card.dart';
import 'package:koru/presentation/misc/loading.dart';

class MembersList extends ConsumerWidget {
  const MembersList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final groupState = ref.watch(
      koruState.select((state) => state.group),
    );
    return groupState.when(
      data: (details) {
        final members = details.group.groupMembers();
        return ListView.separated(
          itemBuilder: (context, number) => MemberTile(
            member: members[number],
          ),
          separatorBuilder: (context, _) => const Divider(thickness: 2.0),
          itemCount: members.length,
        );
      },
      error: (failure) => ErrorCard(errorMessage: failure.errorMessage()),
      loading: () => const Loading(),
    );
  }
}

import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:koru/application/providers.dart';
import 'package:koru/domain/auth/auth_service.dart';
import 'package:koru/domain/group/group_repository.dart';
import 'package:koru/domain/group/model/group.dart';
import 'package:koru/domain/group/usecase/delete_group.dart';
import 'package:koru/domain/store/koru_state_service.dart';

part 'groups_page_state.freezed.dart';

@freezed
class GroupsPageState with _$GroupsPageState {
  const factory GroupsPageState({
    required Option<Either<DeleteGroupFailure, Unit>> deleteGroupResult,
    required bool isSubmitting,
  }) = _GroupsPageState;

  factory GroupsPageState.initial() => GroupsPageState(
        deleteGroupResult: none(),
        isSubmitting: false,
      );
}

class GroupsPageNotifier extends StateNotifier<GroupsPageState> {
  final AuthService authService;
  final KoruStateService stateService;
  final GroupRepository groupRepository;

  GroupsPageNotifier({
    required this.authService,
    required this.stateService,
    required this.groupRepository,
  }) : super(GroupsPageState.initial());

  Future<void> groupDeleted(Group group) async {
    state = state.copyWith(
      isSubmitting: true,
      deleteGroupResult: none(),
    );
    final res = await delete_group(
      group: group,
      authService: authService,
      stateService: stateService,
      repository: groupRepository,
    );
    state = state.copyWith(
      deleteGroupResult: some(res),
      isSubmitting: false,
    );
  }
}

final groupsPageStateProvider =
    StateNotifierProvider<GroupsPageNotifier, GroupsPageState>(
  (ref) {
    final auth = ref.watch(authProvider);
    final repo = ref.watch(groupRepositoryProvider);
    final stateService = ref.watch(koruStateService);
    return GroupsPageNotifier(
      authService: auth,
      stateService: stateService,
      groupRepository: repo,
    );
  },
);

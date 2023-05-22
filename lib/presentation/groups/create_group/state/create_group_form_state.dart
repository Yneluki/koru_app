import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:koru/application/providers.dart';
import 'package:koru/domain/auth/auth_service.dart';
import 'package:koru/domain/common/failures.dart';
import 'package:koru/domain/group/group_repository.dart';
import 'package:koru/domain/group/model/group_name.dart';
import 'package:koru/domain/group/model/member_color.dart';
import 'package:koru/domain/group/usecase/create_group.dart';
import 'package:koru/domain/store/koru_state_service.dart';
import 'package:koru/presentation/misc/color.dart';
import 'package:uuid/uuid.dart';

part 'create_group_form_state.freezed.dart';

@freezed
class CreateGroupFormState with _$CreateGroupFormState {
  const factory CreateGroupFormState({
    required Either<InputDataFailure, GroupName> groupName,
    required Either<InputDataFailure, MemberColor> color,
    required Option<Either<CreateGroupFailure, UuidValue>> createGroupResult,
    required bool isSubmitting,
  }) = _CreateGroupFormState;

  factory CreateGroupFormState.initial() => CreateGroupFormState(
        groupName: left(const InputDataFailure.emptyGroupName()),
        color: MemberColor.build(0, 255, 0),
        createGroupResult: none(),
        isSubmitting: false,
      );
}

class CreateGroupFormNotifier extends StateNotifier<CreateGroupFormState> {
  final AuthService authService;
  final KoruStateService stateService;
  final GroupRepository groupRepository;

  CreateGroupFormNotifier({
    required this.authService,
    required this.stateService,
    required this.groupRepository,
  }) : super(CreateGroupFormState.initial());

  void groupNameChanged(String groupName) {
    state = state.copyWith(
      groupName: GroupName.build(groupName.trim()),
      createGroupResult: none(),
    );
  }

  Color initialColor() {
    final memberColor = state.color.getOrElse(
      () => MemberColor.buildOrThrow(0, 255, 0),
    );
    return memberColor.toColor();
  }

  void colorChanged(int red, int green, int blue) {
    state = state.copyWith(
      color: MemberColor.build(red, green, blue),
      createGroupResult: none(),
    );
  }

  void createGroupRequested() async {
    state = state.copyWith(
      isSubmitting: true,
      createGroupResult: none(),
    );
    final groupName = state.groupName.getOrElse(() => throw Error()).value;
    final color = state.color.getOrElse(() => throw Error());
    final res = await create_group(
      name: groupName,
      red: color.red,
      green: color.green,
      blue: color.blue,
      authService: authService,
      stateService: stateService,
      repository: groupRepository,
    );
    state = state.copyWith(
      createGroupResult: some(res),
      isSubmitting: false,
    );
  }
}

final createGroupFormStateProvider =
    StateNotifierProvider<CreateGroupFormNotifier, CreateGroupFormState>(
  (ref) {
    final auth = ref.watch(authProvider);
    final repo = ref.watch(groupRepositoryProvider);
    final stateService = ref.watch(koruStateService);
    return CreateGroupFormNotifier(
      authService: auth,
      stateService: stateService,
      groupRepository: repo,
    );
  },
);

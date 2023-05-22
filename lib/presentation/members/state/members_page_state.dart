import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:koru/application/providers.dart';
import 'package:koru/domain/auth/auth_service.dart';
import 'package:koru/domain/common/failures.dart';
import 'package:koru/domain/group/group_repository.dart';
import 'package:koru/domain/group/model/member_color.dart';
import 'package:koru/domain/group/usecase/change_color.dart';
import 'package:koru/domain/group/usecase/generate_group_token.dart';
import 'package:koru/domain/store/koru_state_service.dart';
import 'package:koru/presentation/misc/color.dart';
import 'package:uuid/uuid.dart';

part 'members_page_state.freezed.dart';

@freezed
class MembersPageState with _$MembersPageState {
  const factory MembersPageState({
    required Either<InputDataFailure, MemberColor> color,
    required Option<Either<ChangeColorFailure, Unit>> changeColorResult,
    required Option<Either<GenerateTokenFailure, String>> generateTokenResult,
    required bool isSubmitting,
  }) = _MembersPageState;

  factory MembersPageState.initial() => MembersPageState(
        color: MemberColor.build(0, 255, 0),
        changeColorResult: none(),
        generateTokenResult: none(),
        isSubmitting: false,
      );
}

class MembersPageNotifier extends StateNotifier<MembersPageState> {
  final AuthService authService;
  final GroupRepository groupRepository;
  final KoruStateService stateService;
  final Option<UuidValue> group;

  MembersPageNotifier({
    required this.group,
    required this.authService,
    required this.stateService,
    required this.groupRepository,
  }) : super(MembersPageState.initial());

  Future<void> generateTokenRequested() async {
    state = state.copyWith(
      isSubmitting: true,
      generateTokenResult: none(),
      changeColorResult: none(),
    );
    final res = await generate_group_token(
      groupId: group.fold(() => throw Error(), id),
      authService: authService,
      stateService: stateService,
      repository: groupRepository,
    );
    state = state.copyWith(
      generateTokenResult: some(res),
      changeColorResult: none(),
      isSubmitting: false,
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
      generateTokenResult: none(),
      changeColorResult: none(),
    );
  }

  Future<void> changeColorRequested() async {
    state = state.copyWith(
      isSubmitting: true,
      changeColorResult: none(),
      generateTokenResult: none(),
    );
    final color = state.color.getOrElse(() => throw Error());
    final res = await change_color(
      group: group.fold(() => throw Error(), id),
      red: color.red,
      green: color.green,
      blue: color.blue,
      authService: authService,
      stateService: stateService,
      repository: groupRepository,
    );
    state = state.copyWith(
      changeColorResult: some(res),
      generateTokenResult: none(),
      isSubmitting: false,
    );
  }
}

final membersPageStateProvider =
    StateNotifierProvider<MembersPageNotifier, MembersPageState>(
  (ref) {
    final auth = ref.watch(authProvider);
    final repo = ref.watch(groupRepositoryProvider);
    final state = ref.watch(koruStateService);
    final group = ref.watch(koruState.select((value) => value.groupId));
    return MembersPageNotifier(
      group: group,
      authService: auth,
      stateService: state,
      groupRepository: repo,
    );
  },
);

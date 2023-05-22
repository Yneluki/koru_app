import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:koru/application/providers.dart';
import 'package:koru/domain/auth/auth_service.dart';
import 'package:koru/domain/common/failures.dart';
import 'package:koru/domain/group/group_repository.dart';
import 'package:koru/domain/group/model/group_token.dart';
import 'package:koru/domain/group/model/member_color.dart';
import 'package:koru/domain/group/usecase/join_group.dart';
import 'package:koru/domain/store/koru_state_service.dart';
import 'package:koru/presentation/misc/color.dart';

part 'join_group_form_state.freezed.dart';

@freezed
class JoinGroupFormState with _$JoinGroupFormState {
  const factory JoinGroupFormState({
    required Either<InputDataFailure, GroupToken> token,
    required Either<InputDataFailure, MemberColor> color,
    required Option<Either<JoinGroupFailure, Unit>> joinGroupResult,
    required bool isSubmitting,
  }) = _JoinGroupFormState;

  factory JoinGroupFormState.initial() => JoinGroupFormState(
        token: left(const InputDataFailure.emptyGroupToken()),
        color: MemberColor.build(0, 255, 0),
        joinGroupResult: none(),
        isSubmitting: false,
      );
}

class JoinGroupFormNotifier extends StateNotifier<JoinGroupFormState> {
  final AuthService authService;
  final KoruStateService stateService;
  final GroupRepository groupRepository;

  JoinGroupFormNotifier({
    required this.authService,
    required this.stateService,
    required this.groupRepository,
  }) : super(JoinGroupFormState.initial());

  void groupTokenChanged(String token) {
    state = state.copyWith(
      token: GroupToken.build(token.trim()),
      joinGroupResult: none(),
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
      joinGroupResult: none(),
    );
  }

  void joinGroupRequested() async {
    state = state.copyWith(
      isSubmitting: true,
      joinGroupResult: none(),
    );
    final token = state.token.getOrElse(() => throw Error()).value;
    final color = state.color.getOrElse(() => throw Error());
    final res = await join_group(
      token: token,
      red: color.red,
      green: color.green,
      blue: color.blue,
      authService: authService,
      stateService: stateService,
      repository: groupRepository,
    );
    state = state.copyWith(
      joinGroupResult: some(res),
      isSubmitting: false,
    );
  }
}

final joinGroupFormStateProvider =
    StateNotifierProvider<JoinGroupFormNotifier, JoinGroupFormState>(
  (ref) {
    final auth = ref.watch(authProvider);
    final repo = ref.watch(groupRepositoryProvider);
    final stateService = ref.watch(koruStateService);
    return JoinGroupFormNotifier(
      authService: auth,
      stateService: stateService,
      groupRepository: repo,
    );
  },
);

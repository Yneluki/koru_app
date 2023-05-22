import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:koru/application/providers.dart';
import 'package:koru/domain/auth/auth_service.dart';
import 'package:koru/domain/expense/expense_repository.dart';
import 'package:koru/domain/expense/model/expense.dart';
import 'package:koru/domain/expense/usecase/delete_expense.dart';
import 'package:koru/domain/settlement/settlement_repository.dart';
import 'package:koru/domain/settlement/usecase/settle.dart';
import 'package:koru/domain/store/koru_state_service.dart';
import 'package:uuid/uuid.dart';

part 'group_overview_page_state.freezed.dart';

@freezed
class GroupOverviewPageState with _$GroupOverviewPageState {
  const factory GroupOverviewPageState({
    required Option<Either<DeleteExpenseFailure, Unit>> deleteExpenseResult,
    required Option<Either<SettleFailure, Unit>> settleResult,
    required bool isSubmitting,
  }) = _GroupOverviewPageState;

  factory GroupOverviewPageState.initial() => GroupOverviewPageState(
        deleteExpenseResult: none(),
        settleResult: none(),
        isSubmitting: false,
      );
}

class GroupOverviewPageNotifier extends StateNotifier<GroupOverviewPageState> {
  final Option<UuidValue> group;
  final AuthService authService;
  final KoruStateService stateService;
  final ExpenseRepository expenseRepository;
  final SettlementRepository settlementRepository;

  GroupOverviewPageNotifier({
    required this.group,
    required this.authService,
    required this.stateService,
    required this.expenseRepository,
    required this.settlementRepository,
  }) : super(GroupOverviewPageState.initial());

  Future<void> expenseDeleted(Expense expense) async {
    state = state.copyWith(
      isSubmitting: true,
      deleteExpenseResult: none(),
      settleResult: none(),
    );
    final groupId = group.fold(() => throw Error(), id);
    final res = await delete_expense(
      group: groupId,
      expense: expense,
      authService: authService,
      stateService: stateService,
      repository: expenseRepository,
    );
    state = state.copyWith(
      deleteExpenseResult: some(res),
      settleResult: none(),
      isSubmitting: false,
    );
  }

  Future<void> settleRequested() async {
    state = state.copyWith(
      isSubmitting: true,
      deleteExpenseResult: none(),
      settleResult: none(),
    );
    final groupId = group.fold(() => throw Error(), id);
    final res = await settle(
      group: groupId,
      authService: authService,
      stateService: stateService,
      repository: settlementRepository,
    );
    state = state.copyWith(
      settleResult: some(res),
      deleteExpenseResult: none(),
      isSubmitting: false,
    );
  }
}

final groupOverviewPageStateProvider =
    StateNotifierProvider<GroupOverviewPageNotifier, GroupOverviewPageState>(
  (ref) {
    final auth = ref.watch(authProvider);
    final repo = ref.watch(expenseRepositoryProvider);
    final stlRepo = ref.watch(settlementRepositoryProvider);
    final stateService = ref.watch(koruStateService);
    final group = ref.watch(koruState.select((value) => value.groupId));
    return GroupOverviewPageNotifier(
      group: group,
      authService: auth,
      stateService: stateService,
      expenseRepository: repo,
      settlementRepository: stlRepo,
    );
  },
);

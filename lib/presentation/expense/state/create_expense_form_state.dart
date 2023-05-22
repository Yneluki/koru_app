import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:koru/application/providers.dart';
import 'package:koru/domain/auth/auth_service.dart';
import 'package:koru/domain/common/failures.dart';
import 'package:koru/domain/expense/expense_repository.dart';
import 'package:koru/domain/expense/model/expense.dart';
import 'package:koru/domain/expense/model/expense_amount.dart';
import 'package:koru/domain/expense/usecase/create_expense.dart';
import 'package:koru/domain/expense/model/expense_description.dart';
import 'package:koru/domain/expense/usecase/edit_expense.dart';
import 'package:koru/domain/store/koru_state_service.dart';
import 'package:uuid/uuid.dart';

part 'create_expense_form_state.freezed.dart';

@freezed
class CreateExpenseFormState with _$CreateExpenseFormState {
  const factory CreateExpenseFormState({
    required Either<InputDataFailure, ExpenseDescription> expenseDescription,
    required Either<InputDataFailure, ExpenseAmount> expenseAmount,
    required Option<Expense> editExpense,
    required Option<Either<CreateExpenseFailure, UuidValue>>
        createExpenseResult,
    required Option<Either<EditExpenseFailure, Unit>> editExpenseResult,
    required bool isSubmitting,
  }) = _CreateExpenseFormState;

  factory CreateExpenseFormState.initial() => CreateExpenseFormState(
        expenseDescription:
            left(const InputDataFailure.emptyExpenseDescription()),
        expenseAmount: left(const InputDataFailure.emptyAmount()),
        editExpense: none(),
        createExpenseResult: none(),
        editExpenseResult: none(),
        isSubmitting: false,
      );
  factory CreateExpenseFormState.initialized(Expense expense) =>
      CreateExpenseFormState(
        expenseDescription: right(expense.description),
        expenseAmount: right(expense.amount),
        editExpense: some(expense),
        createExpenseResult: none(),
        editExpenseResult: none(),
        isSubmitting: false,
      );
}

class CreateExpenseFormNotifier extends StateNotifier<CreateExpenseFormState> {
  final AuthService authService;
  final KoruStateService stateService;
  final ExpenseRepository expenseRepository;
  final Option<UuidValue> group;

  CreateExpenseFormNotifier({
    required this.group,
    required this.authService,
    required this.stateService,
    required this.expenseRepository,
    required Option<Expense> expense,
  }) : super(
          expense.fold(
            () => CreateExpenseFormState.initial(),
            (e) => CreateExpenseFormState.initialized(e),
          ),
        );

  void initialize(Expense expense) {
    state = state.copyWith(
      editExpense: some(expense),
      expenseAmount: right(expense.amount),
      expenseDescription: right(expense.description),
    );
  }

  void expenseDescriptionChanged(String expenseDescription) {
    state = state.copyWith(
      expenseDescription: ExpenseDescription.build(expenseDescription.trim()),
      createExpenseResult: none(),
      editExpenseResult: none(),
    );
  }

  void expenseAmountChanged(String expenseAmount) {
    state = state.copyWith(
      expenseAmount: ExpenseAmount.build(expenseAmount.trim()),
      createExpenseResult: none(),
      editExpenseResult: none(),
    );
  }

  void saveExpenseRequested() async {
    state = state.copyWith(
      isSubmitting: true,
      createExpenseResult: none(),
      editExpenseResult: none(),
    );
    final description =
        state.expenseDescription.getOrElse(() => throw Error()).value;
    final amount =
        state.expenseAmount.getOrElse(() => throw Error()).value.toString();
    state.editExpense.fold(
      () async {
        final res = await create_expense(
          group: group.fold(() => throw Error(), id),
          description: description,
          amount: amount,
          authService: authService,
          stateService: stateService,
          repository: expenseRepository,
        );
        state = state.copyWith(
          createExpenseResult: some(res),
          editExpenseResult: none(),
          isSubmitting: false,
        );
      },
      (exp) async {
        final res = await edit_expense(
          group: group.fold(() => throw Error(), id),
          expense: exp,
          description: description,
          amount: amount,
          authService: authService,
          stateService: stateService,
          repository: expenseRepository,
        );
        state = state.copyWith(
          editExpenseResult: some(res),
          createExpenseResult: none(),
          isSubmitting: false,
        );
      },
    );
  }
}

final createExpenseFormStateProvider = StateNotifierProvider.family<
    CreateExpenseFormNotifier, CreateExpenseFormState, Expense?>(
  (ref, expense) {
    final auth = ref.watch(authProvider);
    final repo = ref.watch(expenseRepositoryProvider);
    final group = ref.watch(koruState.select((value) => value.groupId));
    final stateService = ref.watch(koruStateService);
    return CreateExpenseFormNotifier(
      group: group,
      expense: optionOf(expense),
      authService: auth,
      stateService: stateService,
      expenseRepository: repo,
    );
  },
);

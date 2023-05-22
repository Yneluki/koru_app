// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_expense_form_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CreateExpenseFormState {
  Either<InputDataFailure, ExpenseDescription> get expenseDescription =>
      throw _privateConstructorUsedError;
  Either<InputDataFailure, ExpenseAmount> get expenseAmount =>
      throw _privateConstructorUsedError;
  Option<Expense> get editExpense => throw _privateConstructorUsedError;
  Option<Either<CreateExpenseFailure, UuidValue>> get createExpenseResult =>
      throw _privateConstructorUsedError;
  Option<Either<EditExpenseFailure, Unit>> get editExpenseResult =>
      throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateExpenseFormStateCopyWith<CreateExpenseFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateExpenseFormStateCopyWith<$Res> {
  factory $CreateExpenseFormStateCopyWith(CreateExpenseFormState value,
          $Res Function(CreateExpenseFormState) then) =
      _$CreateExpenseFormStateCopyWithImpl<$Res, CreateExpenseFormState>;
  @useResult
  $Res call(
      {Either<InputDataFailure, ExpenseDescription> expenseDescription,
      Either<InputDataFailure, ExpenseAmount> expenseAmount,
      Option<Expense> editExpense,
      Option<Either<CreateExpenseFailure, UuidValue>> createExpenseResult,
      Option<Either<EditExpenseFailure, Unit>> editExpenseResult,
      bool isSubmitting});
}

/// @nodoc
class _$CreateExpenseFormStateCopyWithImpl<$Res,
        $Val extends CreateExpenseFormState>
    implements $CreateExpenseFormStateCopyWith<$Res> {
  _$CreateExpenseFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expenseDescription = null,
    Object? expenseAmount = null,
    Object? editExpense = null,
    Object? createExpenseResult = null,
    Object? editExpenseResult = null,
    Object? isSubmitting = null,
  }) {
    return _then(_value.copyWith(
      expenseDescription: null == expenseDescription
          ? _value.expenseDescription
          : expenseDescription // ignore: cast_nullable_to_non_nullable
              as Either<InputDataFailure, ExpenseDescription>,
      expenseAmount: null == expenseAmount
          ? _value.expenseAmount
          : expenseAmount // ignore: cast_nullable_to_non_nullable
              as Either<InputDataFailure, ExpenseAmount>,
      editExpense: null == editExpense
          ? _value.editExpense
          : editExpense // ignore: cast_nullable_to_non_nullable
              as Option<Expense>,
      createExpenseResult: null == createExpenseResult
          ? _value.createExpenseResult
          : createExpenseResult // ignore: cast_nullable_to_non_nullable
              as Option<Either<CreateExpenseFailure, UuidValue>>,
      editExpenseResult: null == editExpenseResult
          ? _value.editExpenseResult
          : editExpenseResult // ignore: cast_nullable_to_non_nullable
              as Option<Either<EditExpenseFailure, Unit>>,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CreateExpenseFormStateCopyWith<$Res>
    implements $CreateExpenseFormStateCopyWith<$Res> {
  factory _$$_CreateExpenseFormStateCopyWith(_$_CreateExpenseFormState value,
          $Res Function(_$_CreateExpenseFormState) then) =
      __$$_CreateExpenseFormStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Either<InputDataFailure, ExpenseDescription> expenseDescription,
      Either<InputDataFailure, ExpenseAmount> expenseAmount,
      Option<Expense> editExpense,
      Option<Either<CreateExpenseFailure, UuidValue>> createExpenseResult,
      Option<Either<EditExpenseFailure, Unit>> editExpenseResult,
      bool isSubmitting});
}

/// @nodoc
class __$$_CreateExpenseFormStateCopyWithImpl<$Res>
    extends _$CreateExpenseFormStateCopyWithImpl<$Res,
        _$_CreateExpenseFormState>
    implements _$$_CreateExpenseFormStateCopyWith<$Res> {
  __$$_CreateExpenseFormStateCopyWithImpl(_$_CreateExpenseFormState _value,
      $Res Function(_$_CreateExpenseFormState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expenseDescription = null,
    Object? expenseAmount = null,
    Object? editExpense = null,
    Object? createExpenseResult = null,
    Object? editExpenseResult = null,
    Object? isSubmitting = null,
  }) {
    return _then(_$_CreateExpenseFormState(
      expenseDescription: null == expenseDescription
          ? _value.expenseDescription
          : expenseDescription // ignore: cast_nullable_to_non_nullable
              as Either<InputDataFailure, ExpenseDescription>,
      expenseAmount: null == expenseAmount
          ? _value.expenseAmount
          : expenseAmount // ignore: cast_nullable_to_non_nullable
              as Either<InputDataFailure, ExpenseAmount>,
      editExpense: null == editExpense
          ? _value.editExpense
          : editExpense // ignore: cast_nullable_to_non_nullable
              as Option<Expense>,
      createExpenseResult: null == createExpenseResult
          ? _value.createExpenseResult
          : createExpenseResult // ignore: cast_nullable_to_non_nullable
              as Option<Either<CreateExpenseFailure, UuidValue>>,
      editExpenseResult: null == editExpenseResult
          ? _value.editExpenseResult
          : editExpenseResult // ignore: cast_nullable_to_non_nullable
              as Option<Either<EditExpenseFailure, Unit>>,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_CreateExpenseFormState implements _CreateExpenseFormState {
  const _$_CreateExpenseFormState(
      {required this.expenseDescription,
      required this.expenseAmount,
      required this.editExpense,
      required this.createExpenseResult,
      required this.editExpenseResult,
      required this.isSubmitting});

  @override
  final Either<InputDataFailure, ExpenseDescription> expenseDescription;
  @override
  final Either<InputDataFailure, ExpenseAmount> expenseAmount;
  @override
  final Option<Expense> editExpense;
  @override
  final Option<Either<CreateExpenseFailure, UuidValue>> createExpenseResult;
  @override
  final Option<Either<EditExpenseFailure, Unit>> editExpenseResult;
  @override
  final bool isSubmitting;

  @override
  String toString() {
    return 'CreateExpenseFormState(expenseDescription: $expenseDescription, expenseAmount: $expenseAmount, editExpense: $editExpense, createExpenseResult: $createExpenseResult, editExpenseResult: $editExpenseResult, isSubmitting: $isSubmitting)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateExpenseFormState &&
            (identical(other.expenseDescription, expenseDescription) ||
                other.expenseDescription == expenseDescription) &&
            (identical(other.expenseAmount, expenseAmount) ||
                other.expenseAmount == expenseAmount) &&
            (identical(other.editExpense, editExpense) ||
                other.editExpense == editExpense) &&
            (identical(other.createExpenseResult, createExpenseResult) ||
                other.createExpenseResult == createExpenseResult) &&
            (identical(other.editExpenseResult, editExpenseResult) ||
                other.editExpenseResult == editExpenseResult) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      expenseDescription,
      expenseAmount,
      editExpense,
      createExpenseResult,
      editExpenseResult,
      isSubmitting);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateExpenseFormStateCopyWith<_$_CreateExpenseFormState> get copyWith =>
      __$$_CreateExpenseFormStateCopyWithImpl<_$_CreateExpenseFormState>(
          this, _$identity);
}

abstract class _CreateExpenseFormState implements CreateExpenseFormState {
  const factory _CreateExpenseFormState(
      {required final Either<InputDataFailure, ExpenseDescription>
          expenseDescription,
      required final Either<InputDataFailure, ExpenseAmount> expenseAmount,
      required final Option<Expense> editExpense,
      required final Option<Either<CreateExpenseFailure, UuidValue>>
          createExpenseResult,
      required final Option<Either<EditExpenseFailure, Unit>> editExpenseResult,
      required final bool isSubmitting}) = _$_CreateExpenseFormState;

  @override
  Either<InputDataFailure, ExpenseDescription> get expenseDescription;
  @override
  Either<InputDataFailure, ExpenseAmount> get expenseAmount;
  @override
  Option<Expense> get editExpense;
  @override
  Option<Either<CreateExpenseFailure, UuidValue>> get createExpenseResult;
  @override
  Option<Either<EditExpenseFailure, Unit>> get editExpenseResult;
  @override
  bool get isSubmitting;
  @override
  @JsonKey(ignore: true)
  _$$_CreateExpenseFormStateCopyWith<_$_CreateExpenseFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

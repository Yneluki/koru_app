// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'group_overview_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GroupOverviewPageState {
  Option<Either<DeleteExpenseFailure, Unit>> get deleteExpenseResult =>
      throw _privateConstructorUsedError;
  Option<Either<SettleFailure, Unit>> get settleResult =>
      throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GroupOverviewPageStateCopyWith<GroupOverviewPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupOverviewPageStateCopyWith<$Res> {
  factory $GroupOverviewPageStateCopyWith(GroupOverviewPageState value,
          $Res Function(GroupOverviewPageState) then) =
      _$GroupOverviewPageStateCopyWithImpl<$Res, GroupOverviewPageState>;
  @useResult
  $Res call(
      {Option<Either<DeleteExpenseFailure, Unit>> deleteExpenseResult,
      Option<Either<SettleFailure, Unit>> settleResult,
      bool isSubmitting});
}

/// @nodoc
class _$GroupOverviewPageStateCopyWithImpl<$Res,
        $Val extends GroupOverviewPageState>
    implements $GroupOverviewPageStateCopyWith<$Res> {
  _$GroupOverviewPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deleteExpenseResult = null,
    Object? settleResult = null,
    Object? isSubmitting = null,
  }) {
    return _then(_value.copyWith(
      deleteExpenseResult: null == deleteExpenseResult
          ? _value.deleteExpenseResult
          : deleteExpenseResult // ignore: cast_nullable_to_non_nullable
              as Option<Either<DeleteExpenseFailure, Unit>>,
      settleResult: null == settleResult
          ? _value.settleResult
          : settleResult // ignore: cast_nullable_to_non_nullable
              as Option<Either<SettleFailure, Unit>>,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GroupOverviewPageStateCopyWith<$Res>
    implements $GroupOverviewPageStateCopyWith<$Res> {
  factory _$$_GroupOverviewPageStateCopyWith(_$_GroupOverviewPageState value,
          $Res Function(_$_GroupOverviewPageState) then) =
      __$$_GroupOverviewPageStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Option<Either<DeleteExpenseFailure, Unit>> deleteExpenseResult,
      Option<Either<SettleFailure, Unit>> settleResult,
      bool isSubmitting});
}

/// @nodoc
class __$$_GroupOverviewPageStateCopyWithImpl<$Res>
    extends _$GroupOverviewPageStateCopyWithImpl<$Res,
        _$_GroupOverviewPageState>
    implements _$$_GroupOverviewPageStateCopyWith<$Res> {
  __$$_GroupOverviewPageStateCopyWithImpl(_$_GroupOverviewPageState _value,
      $Res Function(_$_GroupOverviewPageState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deleteExpenseResult = null,
    Object? settleResult = null,
    Object? isSubmitting = null,
  }) {
    return _then(_$_GroupOverviewPageState(
      deleteExpenseResult: null == deleteExpenseResult
          ? _value.deleteExpenseResult
          : deleteExpenseResult // ignore: cast_nullable_to_non_nullable
              as Option<Either<DeleteExpenseFailure, Unit>>,
      settleResult: null == settleResult
          ? _value.settleResult
          : settleResult // ignore: cast_nullable_to_non_nullable
              as Option<Either<SettleFailure, Unit>>,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_GroupOverviewPageState implements _GroupOverviewPageState {
  const _$_GroupOverviewPageState(
      {required this.deleteExpenseResult,
      required this.settleResult,
      required this.isSubmitting});

  @override
  final Option<Either<DeleteExpenseFailure, Unit>> deleteExpenseResult;
  @override
  final Option<Either<SettleFailure, Unit>> settleResult;
  @override
  final bool isSubmitting;

  @override
  String toString() {
    return 'GroupOverviewPageState(deleteExpenseResult: $deleteExpenseResult, settleResult: $settleResult, isSubmitting: $isSubmitting)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GroupOverviewPageState &&
            (identical(other.deleteExpenseResult, deleteExpenseResult) ||
                other.deleteExpenseResult == deleteExpenseResult) &&
            (identical(other.settleResult, settleResult) ||
                other.settleResult == settleResult) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, deleteExpenseResult, settleResult, isSubmitting);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GroupOverviewPageStateCopyWith<_$_GroupOverviewPageState> get copyWith =>
      __$$_GroupOverviewPageStateCopyWithImpl<_$_GroupOverviewPageState>(
          this, _$identity);
}

abstract class _GroupOverviewPageState implements GroupOverviewPageState {
  const factory _GroupOverviewPageState(
      {required final Option<Either<DeleteExpenseFailure, Unit>>
          deleteExpenseResult,
      required final Option<Either<SettleFailure, Unit>> settleResult,
      required final bool isSubmitting}) = _$_GroupOverviewPageState;

  @override
  Option<Either<DeleteExpenseFailure, Unit>> get deleteExpenseResult;
  @override
  Option<Either<SettleFailure, Unit>> get settleResult;
  @override
  bool get isSubmitting;
  @override
  @JsonKey(ignore: true)
  _$$_GroupOverviewPageStateCopyWith<_$_GroupOverviewPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

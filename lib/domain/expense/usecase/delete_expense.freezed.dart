// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_expense.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DeleteExpenseFailure {
  ExpenseRepositoryFailure get failure => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ExpenseRepositoryFailure failure)
        expenseRepositoryError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ExpenseRepositoryFailure failure)? expenseRepositoryError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ExpenseRepositoryFailure failure)? expenseRepositoryError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExpenseRepositoryError value)
        expenseRepositoryError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExpenseRepositoryError value)? expenseRepositoryError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExpenseRepositoryError value)? expenseRepositoryError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DeleteExpenseFailureCopyWith<DeleteExpenseFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteExpenseFailureCopyWith<$Res> {
  factory $DeleteExpenseFailureCopyWith(DeleteExpenseFailure value,
          $Res Function(DeleteExpenseFailure) then) =
      _$DeleteExpenseFailureCopyWithImpl<$Res, DeleteExpenseFailure>;
  @useResult
  $Res call({ExpenseRepositoryFailure failure});

  $ExpenseRepositoryFailureCopyWith<$Res> get failure;
}

/// @nodoc
class _$DeleteExpenseFailureCopyWithImpl<$Res,
        $Val extends DeleteExpenseFailure>
    implements $DeleteExpenseFailureCopyWith<$Res> {
  _$DeleteExpenseFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_value.copyWith(
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as ExpenseRepositoryFailure,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ExpenseRepositoryFailureCopyWith<$Res> get failure {
    return $ExpenseRepositoryFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ExpenseRepositoryErrorCopyWith<$Res>
    implements $DeleteExpenseFailureCopyWith<$Res> {
  factory _$$ExpenseRepositoryErrorCopyWith(_$ExpenseRepositoryError value,
          $Res Function(_$ExpenseRepositoryError) then) =
      __$$ExpenseRepositoryErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ExpenseRepositoryFailure failure});

  @override
  $ExpenseRepositoryFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$ExpenseRepositoryErrorCopyWithImpl<$Res>
    extends _$DeleteExpenseFailureCopyWithImpl<$Res, _$ExpenseRepositoryError>
    implements _$$ExpenseRepositoryErrorCopyWith<$Res> {
  __$$ExpenseRepositoryErrorCopyWithImpl(_$ExpenseRepositoryError _value,
      $Res Function(_$ExpenseRepositoryError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$ExpenseRepositoryError(
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as ExpenseRepositoryFailure,
    ));
  }
}

/// @nodoc

class _$ExpenseRepositoryError implements ExpenseRepositoryError {
  const _$ExpenseRepositoryError({required this.failure});

  @override
  final ExpenseRepositoryFailure failure;

  @override
  String toString() {
    return 'DeleteExpenseFailure.expenseRepositoryError(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExpenseRepositoryError &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExpenseRepositoryErrorCopyWith<_$ExpenseRepositoryError> get copyWith =>
      __$$ExpenseRepositoryErrorCopyWithImpl<_$ExpenseRepositoryError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ExpenseRepositoryFailure failure)
        expenseRepositoryError,
  }) {
    return expenseRepositoryError(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ExpenseRepositoryFailure failure)? expenseRepositoryError,
  }) {
    return expenseRepositoryError?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ExpenseRepositoryFailure failure)? expenseRepositoryError,
    required TResult orElse(),
  }) {
    if (expenseRepositoryError != null) {
      return expenseRepositoryError(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExpenseRepositoryError value)
        expenseRepositoryError,
  }) {
    return expenseRepositoryError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExpenseRepositoryError value)? expenseRepositoryError,
  }) {
    return expenseRepositoryError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExpenseRepositoryError value)? expenseRepositoryError,
    required TResult orElse(),
  }) {
    if (expenseRepositoryError != null) {
      return expenseRepositoryError(this);
    }
    return orElse();
  }
}

abstract class ExpenseRepositoryError implements DeleteExpenseFailure {
  const factory ExpenseRepositoryError(
          {required final ExpenseRepositoryFailure failure}) =
      _$ExpenseRepositoryError;

  @override
  ExpenseRepositoryFailure get failure;
  @override
  @JsonKey(ignore: true)
  _$$ExpenseRepositoryErrorCopyWith<_$ExpenseRepositoryError> get copyWith =>
      throw _privateConstructorUsedError;
}

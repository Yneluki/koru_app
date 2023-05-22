// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_expense.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EditExpenseFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<InputDataFailure> failures) invalidData,
    required TResult Function(ExpenseRepositoryFailure failure)
        expenseRepositoryError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<InputDataFailure> failures)? invalidData,
    TResult? Function(ExpenseRepositoryFailure failure)? expenseRepositoryError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<InputDataFailure> failures)? invalidData,
    TResult Function(ExpenseRepositoryFailure failure)? expenseRepositoryError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidData value) invalidData,
    required TResult Function(ExpenseRepositoryError value)
        expenseRepositoryError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InvalidData value)? invalidData,
    TResult? Function(ExpenseRepositoryError value)? expenseRepositoryError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidData value)? invalidData,
    TResult Function(ExpenseRepositoryError value)? expenseRepositoryError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditExpenseFailureCopyWith<$Res> {
  factory $EditExpenseFailureCopyWith(
          EditExpenseFailure value, $Res Function(EditExpenseFailure) then) =
      _$EditExpenseFailureCopyWithImpl<$Res, EditExpenseFailure>;
}

/// @nodoc
class _$EditExpenseFailureCopyWithImpl<$Res, $Val extends EditExpenseFailure>
    implements $EditExpenseFailureCopyWith<$Res> {
  _$EditExpenseFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InvalidDataCopyWith<$Res> {
  factory _$$InvalidDataCopyWith(
          _$InvalidData value, $Res Function(_$InvalidData) then) =
      __$$InvalidDataCopyWithImpl<$Res>;
  @useResult
  $Res call({List<InputDataFailure> failures});
}

/// @nodoc
class __$$InvalidDataCopyWithImpl<$Res>
    extends _$EditExpenseFailureCopyWithImpl<$Res, _$InvalidData>
    implements _$$InvalidDataCopyWith<$Res> {
  __$$InvalidDataCopyWithImpl(
      _$InvalidData _value, $Res Function(_$InvalidData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failures = null,
  }) {
    return _then(_$InvalidData(
      failures: null == failures
          ? _value._failures
          : failures // ignore: cast_nullable_to_non_nullable
              as List<InputDataFailure>,
    ));
  }
}

/// @nodoc

class _$InvalidData implements InvalidData {
  const _$InvalidData({required final List<InputDataFailure> failures})
      : _failures = failures;

  final List<InputDataFailure> _failures;
  @override
  List<InputDataFailure> get failures {
    if (_failures is EqualUnmodifiableListView) return _failures;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_failures);
  }

  @override
  String toString() {
    return 'EditExpenseFailure.invalidData(failures: $failures)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidData &&
            const DeepCollectionEquality().equals(other._failures, _failures));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_failures));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InvalidDataCopyWith<_$InvalidData> get copyWith =>
      __$$InvalidDataCopyWithImpl<_$InvalidData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<InputDataFailure> failures) invalidData,
    required TResult Function(ExpenseRepositoryFailure failure)
        expenseRepositoryError,
  }) {
    return invalidData(failures);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<InputDataFailure> failures)? invalidData,
    TResult? Function(ExpenseRepositoryFailure failure)? expenseRepositoryError,
  }) {
    return invalidData?.call(failures);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<InputDataFailure> failures)? invalidData,
    TResult Function(ExpenseRepositoryFailure failure)? expenseRepositoryError,
    required TResult orElse(),
  }) {
    if (invalidData != null) {
      return invalidData(failures);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidData value) invalidData,
    required TResult Function(ExpenseRepositoryError value)
        expenseRepositoryError,
  }) {
    return invalidData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InvalidData value)? invalidData,
    TResult? Function(ExpenseRepositoryError value)? expenseRepositoryError,
  }) {
    return invalidData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidData value)? invalidData,
    TResult Function(ExpenseRepositoryError value)? expenseRepositoryError,
    required TResult orElse(),
  }) {
    if (invalidData != null) {
      return invalidData(this);
    }
    return orElse();
  }
}

abstract class InvalidData implements EditExpenseFailure {
  const factory InvalidData({required final List<InputDataFailure> failures}) =
      _$InvalidData;

  List<InputDataFailure> get failures;
  @JsonKey(ignore: true)
  _$$InvalidDataCopyWith<_$InvalidData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ExpenseRepositoryErrorCopyWith<$Res> {
  factory _$$ExpenseRepositoryErrorCopyWith(_$ExpenseRepositoryError value,
          $Res Function(_$ExpenseRepositoryError) then) =
      __$$ExpenseRepositoryErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({ExpenseRepositoryFailure failure});

  $ExpenseRepositoryFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$ExpenseRepositoryErrorCopyWithImpl<$Res>
    extends _$EditExpenseFailureCopyWithImpl<$Res, _$ExpenseRepositoryError>
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

  @override
  @pragma('vm:prefer-inline')
  $ExpenseRepositoryFailureCopyWith<$Res> get failure {
    return $ExpenseRepositoryFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$ExpenseRepositoryError implements ExpenseRepositoryError {
  const _$ExpenseRepositoryError({required this.failure});

  @override
  final ExpenseRepositoryFailure failure;

  @override
  String toString() {
    return 'EditExpenseFailure.expenseRepositoryError(failure: $failure)';
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
    required TResult Function(List<InputDataFailure> failures) invalidData,
    required TResult Function(ExpenseRepositoryFailure failure)
        expenseRepositoryError,
  }) {
    return expenseRepositoryError(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<InputDataFailure> failures)? invalidData,
    TResult? Function(ExpenseRepositoryFailure failure)? expenseRepositoryError,
  }) {
    return expenseRepositoryError?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<InputDataFailure> failures)? invalidData,
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
    required TResult Function(InvalidData value) invalidData,
    required TResult Function(ExpenseRepositoryError value)
        expenseRepositoryError,
  }) {
    return expenseRepositoryError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InvalidData value)? invalidData,
    TResult? Function(ExpenseRepositoryError value)? expenseRepositoryError,
  }) {
    return expenseRepositoryError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidData value)? invalidData,
    TResult Function(ExpenseRepositoryError value)? expenseRepositoryError,
    required TResult orElse(),
  }) {
    if (expenseRepositoryError != null) {
      return expenseRepositoryError(this);
    }
    return orElse();
  }
}

abstract class ExpenseRepositoryError implements EditExpenseFailure {
  const factory ExpenseRepositoryError(
          {required final ExpenseRepositoryFailure failure}) =
      _$ExpenseRepositoryError;

  ExpenseRepositoryFailure get failure;
  @JsonKey(ignore: true)
  _$$ExpenseRepositoryErrorCopyWith<_$ExpenseRepositoryError> get copyWith =>
      throw _privateConstructorUsedError;
}

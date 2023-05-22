// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settle.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SettleFailure {
  SettlementRepositoryFailure get failure => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SettlementRepositoryFailure failure)
        settlementRepositoryError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SettlementRepositoryFailure failure)?
        settlementRepositoryError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SettlementRepositoryFailure failure)?
        settlementRepositoryError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SettlementRepositoryError value)
        settlementRepositoryError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SettlementRepositoryError value)?
        settlementRepositoryError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SettlementRepositoryError value)?
        settlementRepositoryError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SettleFailureCopyWith<SettleFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettleFailureCopyWith<$Res> {
  factory $SettleFailureCopyWith(
          SettleFailure value, $Res Function(SettleFailure) then) =
      _$SettleFailureCopyWithImpl<$Res, SettleFailure>;
  @useResult
  $Res call({SettlementRepositoryFailure failure});

  $SettlementRepositoryFailureCopyWith<$Res> get failure;
}

/// @nodoc
class _$SettleFailureCopyWithImpl<$Res, $Val extends SettleFailure>
    implements $SettleFailureCopyWith<$Res> {
  _$SettleFailureCopyWithImpl(this._value, this._then);

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
              as SettlementRepositoryFailure,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SettlementRepositoryFailureCopyWith<$Res> get failure {
    return $SettlementRepositoryFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SettlementRepositoryErrorCopyWith<$Res>
    implements $SettleFailureCopyWith<$Res> {
  factory _$$SettlementRepositoryErrorCopyWith(
          _$SettlementRepositoryError value,
          $Res Function(_$SettlementRepositoryError) then) =
      __$$SettlementRepositoryErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SettlementRepositoryFailure failure});

  @override
  $SettlementRepositoryFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$SettlementRepositoryErrorCopyWithImpl<$Res>
    extends _$SettleFailureCopyWithImpl<$Res, _$SettlementRepositoryError>
    implements _$$SettlementRepositoryErrorCopyWith<$Res> {
  __$$SettlementRepositoryErrorCopyWithImpl(_$SettlementRepositoryError _value,
      $Res Function(_$SettlementRepositoryError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$SettlementRepositoryError(
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as SettlementRepositoryFailure,
    ));
  }
}

/// @nodoc

class _$SettlementRepositoryError implements SettlementRepositoryError {
  const _$SettlementRepositoryError({required this.failure});

  @override
  final SettlementRepositoryFailure failure;

  @override
  String toString() {
    return 'SettleFailure.settlementRepositoryError(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettlementRepositoryError &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SettlementRepositoryErrorCopyWith<_$SettlementRepositoryError>
      get copyWith => __$$SettlementRepositoryErrorCopyWithImpl<
          _$SettlementRepositoryError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SettlementRepositoryFailure failure)
        settlementRepositoryError,
  }) {
    return settlementRepositoryError(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SettlementRepositoryFailure failure)?
        settlementRepositoryError,
  }) {
    return settlementRepositoryError?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SettlementRepositoryFailure failure)?
        settlementRepositoryError,
    required TResult orElse(),
  }) {
    if (settlementRepositoryError != null) {
      return settlementRepositoryError(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SettlementRepositoryError value)
        settlementRepositoryError,
  }) {
    return settlementRepositoryError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SettlementRepositoryError value)?
        settlementRepositoryError,
  }) {
    return settlementRepositoryError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SettlementRepositoryError value)?
        settlementRepositoryError,
    required TResult orElse(),
  }) {
    if (settlementRepositoryError != null) {
      return settlementRepositoryError(this);
    }
    return orElse();
  }
}

abstract class SettlementRepositoryError implements SettleFailure {
  const factory SettlementRepositoryError(
          {required final SettlementRepositoryFailure failure}) =
      _$SettlementRepositoryError;

  @override
  SettlementRepositoryFailure get failure;
  @override
  @JsonKey(ignore: true)
  _$$SettlementRepositoryErrorCopyWith<_$SettlementRepositoryError>
      get copyWith => throw _privateConstructorUsedError;
}

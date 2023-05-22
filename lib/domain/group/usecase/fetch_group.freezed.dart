// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fetch_group.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FetchGroupFailure {
  GroupRepositoryFailure get failure => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GroupRepositoryFailure failure)
        groupRepositoryError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GroupRepositoryFailure failure)? groupRepositoryError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GroupRepositoryFailure failure)? groupRepositoryError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GroupRepositoryError value) groupRepositoryError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GroupRepositoryError value)? groupRepositoryError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GroupRepositoryError value)? groupRepositoryError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FetchGroupFailureCopyWith<FetchGroupFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchGroupFailureCopyWith<$Res> {
  factory $FetchGroupFailureCopyWith(
          FetchGroupFailure value, $Res Function(FetchGroupFailure) then) =
      _$FetchGroupFailureCopyWithImpl<$Res, FetchGroupFailure>;
  @useResult
  $Res call({GroupRepositoryFailure failure});

  $GroupRepositoryFailureCopyWith<$Res> get failure;
}

/// @nodoc
class _$FetchGroupFailureCopyWithImpl<$Res, $Val extends FetchGroupFailure>
    implements $FetchGroupFailureCopyWith<$Res> {
  _$FetchGroupFailureCopyWithImpl(this._value, this._then);

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
              as GroupRepositoryFailure,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GroupRepositoryFailureCopyWith<$Res> get failure {
    return $GroupRepositoryFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GroupRepositoryErrorCopyWith<$Res>
    implements $FetchGroupFailureCopyWith<$Res> {
  factory _$$GroupRepositoryErrorCopyWith(_$GroupRepositoryError value,
          $Res Function(_$GroupRepositoryError) then) =
      __$$GroupRepositoryErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({GroupRepositoryFailure failure});

  @override
  $GroupRepositoryFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$GroupRepositoryErrorCopyWithImpl<$Res>
    extends _$FetchGroupFailureCopyWithImpl<$Res, _$GroupRepositoryError>
    implements _$$GroupRepositoryErrorCopyWith<$Res> {
  __$$GroupRepositoryErrorCopyWithImpl(_$GroupRepositoryError _value,
      $Res Function(_$GroupRepositoryError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$GroupRepositoryError(
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as GroupRepositoryFailure,
    ));
  }
}

/// @nodoc

class _$GroupRepositoryError implements GroupRepositoryError {
  const _$GroupRepositoryError({required this.failure});

  @override
  final GroupRepositoryFailure failure;

  @override
  String toString() {
    return 'FetchGroupFailure.groupRepositoryError(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroupRepositoryError &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GroupRepositoryErrorCopyWith<_$GroupRepositoryError> get copyWith =>
      __$$GroupRepositoryErrorCopyWithImpl<_$GroupRepositoryError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GroupRepositoryFailure failure)
        groupRepositoryError,
  }) {
    return groupRepositoryError(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GroupRepositoryFailure failure)? groupRepositoryError,
  }) {
    return groupRepositoryError?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GroupRepositoryFailure failure)? groupRepositoryError,
    required TResult orElse(),
  }) {
    if (groupRepositoryError != null) {
      return groupRepositoryError(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GroupRepositoryError value) groupRepositoryError,
  }) {
    return groupRepositoryError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GroupRepositoryError value)? groupRepositoryError,
  }) {
    return groupRepositoryError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GroupRepositoryError value)? groupRepositoryError,
    required TResult orElse(),
  }) {
    if (groupRepositoryError != null) {
      return groupRepositoryError(this);
    }
    return orElse();
  }
}

abstract class GroupRepositoryError implements FetchGroupFailure {
  const factory GroupRepositoryError(
      {required final GroupRepositoryFailure failure}) = _$GroupRepositoryError;

  @override
  GroupRepositoryFailure get failure;
  @override
  @JsonKey(ignore: true)
  _$$GroupRepositoryErrorCopyWith<_$GroupRepositoryError> get copyWith =>
      throw _privateConstructorUsedError;
}

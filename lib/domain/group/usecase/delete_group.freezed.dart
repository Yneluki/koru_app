// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_group.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DeleteGroupFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() userIsNotAdmin,
    required TResult Function(GroupRepositoryFailure failure)
        groupRepositoryError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? userIsNotAdmin,
    TResult? Function(GroupRepositoryFailure failure)? groupRepositoryError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? userIsNotAdmin,
    TResult Function(GroupRepositoryFailure failure)? groupRepositoryError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserIsNotAdmin value) userIsNotAdmin,
    required TResult Function(GroupRepositoryError value) groupRepositoryError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserIsNotAdmin value)? userIsNotAdmin,
    TResult? Function(GroupRepositoryError value)? groupRepositoryError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserIsNotAdmin value)? userIsNotAdmin,
    TResult Function(GroupRepositoryError value)? groupRepositoryError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteGroupFailureCopyWith<$Res> {
  factory $DeleteGroupFailureCopyWith(
          DeleteGroupFailure value, $Res Function(DeleteGroupFailure) then) =
      _$DeleteGroupFailureCopyWithImpl<$Res, DeleteGroupFailure>;
}

/// @nodoc
class _$DeleteGroupFailureCopyWithImpl<$Res, $Val extends DeleteGroupFailure>
    implements $DeleteGroupFailureCopyWith<$Res> {
  _$DeleteGroupFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UserIsNotAdminCopyWith<$Res> {
  factory _$$UserIsNotAdminCopyWith(
          _$UserIsNotAdmin value, $Res Function(_$UserIsNotAdmin) then) =
      __$$UserIsNotAdminCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserIsNotAdminCopyWithImpl<$Res>
    extends _$DeleteGroupFailureCopyWithImpl<$Res, _$UserIsNotAdmin>
    implements _$$UserIsNotAdminCopyWith<$Res> {
  __$$UserIsNotAdminCopyWithImpl(
      _$UserIsNotAdmin _value, $Res Function(_$UserIsNotAdmin) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UserIsNotAdmin implements UserIsNotAdmin {
  const _$UserIsNotAdmin();

  @override
  String toString() {
    return 'DeleteGroupFailure.userIsNotAdmin()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserIsNotAdmin);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() userIsNotAdmin,
    required TResult Function(GroupRepositoryFailure failure)
        groupRepositoryError,
  }) {
    return userIsNotAdmin();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? userIsNotAdmin,
    TResult? Function(GroupRepositoryFailure failure)? groupRepositoryError,
  }) {
    return userIsNotAdmin?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? userIsNotAdmin,
    TResult Function(GroupRepositoryFailure failure)? groupRepositoryError,
    required TResult orElse(),
  }) {
    if (userIsNotAdmin != null) {
      return userIsNotAdmin();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserIsNotAdmin value) userIsNotAdmin,
    required TResult Function(GroupRepositoryError value) groupRepositoryError,
  }) {
    return userIsNotAdmin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserIsNotAdmin value)? userIsNotAdmin,
    TResult? Function(GroupRepositoryError value)? groupRepositoryError,
  }) {
    return userIsNotAdmin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserIsNotAdmin value)? userIsNotAdmin,
    TResult Function(GroupRepositoryError value)? groupRepositoryError,
    required TResult orElse(),
  }) {
    if (userIsNotAdmin != null) {
      return userIsNotAdmin(this);
    }
    return orElse();
  }
}

abstract class UserIsNotAdmin implements DeleteGroupFailure {
  const factory UserIsNotAdmin() = _$UserIsNotAdmin;
}

/// @nodoc
abstract class _$$GroupRepositoryErrorCopyWith<$Res> {
  factory _$$GroupRepositoryErrorCopyWith(_$GroupRepositoryError value,
          $Res Function(_$GroupRepositoryError) then) =
      __$$GroupRepositoryErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({GroupRepositoryFailure failure});

  $GroupRepositoryFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$GroupRepositoryErrorCopyWithImpl<$Res>
    extends _$DeleteGroupFailureCopyWithImpl<$Res, _$GroupRepositoryError>
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

  @override
  @pragma('vm:prefer-inline')
  $GroupRepositoryFailureCopyWith<$Res> get failure {
    return $GroupRepositoryFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$GroupRepositoryError implements GroupRepositoryError {
  const _$GroupRepositoryError({required this.failure});

  @override
  final GroupRepositoryFailure failure;

  @override
  String toString() {
    return 'DeleteGroupFailure.groupRepositoryError(failure: $failure)';
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
    required TResult Function() userIsNotAdmin,
    required TResult Function(GroupRepositoryFailure failure)
        groupRepositoryError,
  }) {
    return groupRepositoryError(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? userIsNotAdmin,
    TResult? Function(GroupRepositoryFailure failure)? groupRepositoryError,
  }) {
    return groupRepositoryError?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? userIsNotAdmin,
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
    required TResult Function(UserIsNotAdmin value) userIsNotAdmin,
    required TResult Function(GroupRepositoryError value) groupRepositoryError,
  }) {
    return groupRepositoryError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserIsNotAdmin value)? userIsNotAdmin,
    TResult? Function(GroupRepositoryError value)? groupRepositoryError,
  }) {
    return groupRepositoryError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserIsNotAdmin value)? userIsNotAdmin,
    TResult Function(GroupRepositoryError value)? groupRepositoryError,
    required TResult orElse(),
  }) {
    if (groupRepositoryError != null) {
      return groupRepositoryError(this);
    }
    return orElse();
  }
}

abstract class GroupRepositoryError implements DeleteGroupFailure {
  const factory GroupRepositoryError(
      {required final GroupRepositoryFailure failure}) = _$GroupRepositoryError;

  GroupRepositoryFailure get failure;
  @JsonKey(ignore: true)
  _$$GroupRepositoryErrorCopyWith<_$GroupRepositoryError> get copyWith =>
      throw _privateConstructorUsedError;
}

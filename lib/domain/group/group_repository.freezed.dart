// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'group_repository.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GroupRepositoryFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String error) validation,
    required TResult Function() unauthorized,
    required TResult Function() forbidden,
    required TResult Function() internal,
    required TResult Function() conflict,
    required TResult Function() notFound,
    required TResult Function(String error) network,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String error)? validation,
    TResult? Function()? unauthorized,
    TResult? Function()? forbidden,
    TResult? Function()? internal,
    TResult? Function()? conflict,
    TResult? Function()? notFound,
    TResult? Function(String error)? network,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String error)? validation,
    TResult Function()? unauthorized,
    TResult Function()? forbidden,
    TResult Function()? internal,
    TResult Function()? conflict,
    TResult Function()? notFound,
    TResult Function(String error)? network,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Validation value) validation,
    required TResult Function(Unauthorized value) unauthorized,
    required TResult Function(Forbidden value) forbidden,
    required TResult Function(Internal value) internal,
    required TResult Function(Conflict value) conflict,
    required TResult Function(NotFound value) notFound,
    required TResult Function(Network value) network,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Validation value)? validation,
    TResult? Function(Unauthorized value)? unauthorized,
    TResult? Function(Forbidden value)? forbidden,
    TResult? Function(Internal value)? internal,
    TResult? Function(Conflict value)? conflict,
    TResult? Function(NotFound value)? notFound,
    TResult? Function(Network value)? network,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Validation value)? validation,
    TResult Function(Unauthorized value)? unauthorized,
    TResult Function(Forbidden value)? forbidden,
    TResult Function(Internal value)? internal,
    TResult Function(Conflict value)? conflict,
    TResult Function(NotFound value)? notFound,
    TResult Function(Network value)? network,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupRepositoryFailureCopyWith<$Res> {
  factory $GroupRepositoryFailureCopyWith(GroupRepositoryFailure value,
          $Res Function(GroupRepositoryFailure) then) =
      _$GroupRepositoryFailureCopyWithImpl<$Res, GroupRepositoryFailure>;
}

/// @nodoc
class _$GroupRepositoryFailureCopyWithImpl<$Res,
        $Val extends GroupRepositoryFailure>
    implements $GroupRepositoryFailureCopyWith<$Res> {
  _$GroupRepositoryFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ValidationCopyWith<$Res> {
  factory _$$ValidationCopyWith(
          _$Validation value, $Res Function(_$Validation) then) =
      __$$ValidationCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$ValidationCopyWithImpl<$Res>
    extends _$GroupRepositoryFailureCopyWithImpl<$Res, _$Validation>
    implements _$$ValidationCopyWith<$Res> {
  __$$ValidationCopyWithImpl(
      _$Validation _value, $Res Function(_$Validation) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$Validation(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Validation implements Validation {
  const _$Validation({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'GroupRepositoryFailure.validation(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Validation &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ValidationCopyWith<_$Validation> get copyWith =>
      __$$ValidationCopyWithImpl<_$Validation>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String error) validation,
    required TResult Function() unauthorized,
    required TResult Function() forbidden,
    required TResult Function() internal,
    required TResult Function() conflict,
    required TResult Function() notFound,
    required TResult Function(String error) network,
  }) {
    return validation(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String error)? validation,
    TResult? Function()? unauthorized,
    TResult? Function()? forbidden,
    TResult? Function()? internal,
    TResult? Function()? conflict,
    TResult? Function()? notFound,
    TResult? Function(String error)? network,
  }) {
    return validation?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String error)? validation,
    TResult Function()? unauthorized,
    TResult Function()? forbidden,
    TResult Function()? internal,
    TResult Function()? conflict,
    TResult Function()? notFound,
    TResult Function(String error)? network,
    required TResult orElse(),
  }) {
    if (validation != null) {
      return validation(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Validation value) validation,
    required TResult Function(Unauthorized value) unauthorized,
    required TResult Function(Forbidden value) forbidden,
    required TResult Function(Internal value) internal,
    required TResult Function(Conflict value) conflict,
    required TResult Function(NotFound value) notFound,
    required TResult Function(Network value) network,
  }) {
    return validation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Validation value)? validation,
    TResult? Function(Unauthorized value)? unauthorized,
    TResult? Function(Forbidden value)? forbidden,
    TResult? Function(Internal value)? internal,
    TResult? Function(Conflict value)? conflict,
    TResult? Function(NotFound value)? notFound,
    TResult? Function(Network value)? network,
  }) {
    return validation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Validation value)? validation,
    TResult Function(Unauthorized value)? unauthorized,
    TResult Function(Forbidden value)? forbidden,
    TResult Function(Internal value)? internal,
    TResult Function(Conflict value)? conflict,
    TResult Function(NotFound value)? notFound,
    TResult Function(Network value)? network,
    required TResult orElse(),
  }) {
    if (validation != null) {
      return validation(this);
    }
    return orElse();
  }
}

abstract class Validation implements GroupRepositoryFailure {
  const factory Validation({required final String error}) = _$Validation;

  String get error;
  @JsonKey(ignore: true)
  _$$ValidationCopyWith<_$Validation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnauthorizedCopyWith<$Res> {
  factory _$$UnauthorizedCopyWith(
          _$Unauthorized value, $Res Function(_$Unauthorized) then) =
      __$$UnauthorizedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnauthorizedCopyWithImpl<$Res>
    extends _$GroupRepositoryFailureCopyWithImpl<$Res, _$Unauthorized>
    implements _$$UnauthorizedCopyWith<$Res> {
  __$$UnauthorizedCopyWithImpl(
      _$Unauthorized _value, $Res Function(_$Unauthorized) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Unauthorized implements Unauthorized {
  const _$Unauthorized();

  @override
  String toString() {
    return 'GroupRepositoryFailure.unauthorized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Unauthorized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String error) validation,
    required TResult Function() unauthorized,
    required TResult Function() forbidden,
    required TResult Function() internal,
    required TResult Function() conflict,
    required TResult Function() notFound,
    required TResult Function(String error) network,
  }) {
    return unauthorized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String error)? validation,
    TResult? Function()? unauthorized,
    TResult? Function()? forbidden,
    TResult? Function()? internal,
    TResult? Function()? conflict,
    TResult? Function()? notFound,
    TResult? Function(String error)? network,
  }) {
    return unauthorized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String error)? validation,
    TResult Function()? unauthorized,
    TResult Function()? forbidden,
    TResult Function()? internal,
    TResult Function()? conflict,
    TResult Function()? notFound,
    TResult Function(String error)? network,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Validation value) validation,
    required TResult Function(Unauthorized value) unauthorized,
    required TResult Function(Forbidden value) forbidden,
    required TResult Function(Internal value) internal,
    required TResult Function(Conflict value) conflict,
    required TResult Function(NotFound value) notFound,
    required TResult Function(Network value) network,
  }) {
    return unauthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Validation value)? validation,
    TResult? Function(Unauthorized value)? unauthorized,
    TResult? Function(Forbidden value)? forbidden,
    TResult? Function(Internal value)? internal,
    TResult? Function(Conflict value)? conflict,
    TResult? Function(NotFound value)? notFound,
    TResult? Function(Network value)? network,
  }) {
    return unauthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Validation value)? validation,
    TResult Function(Unauthorized value)? unauthorized,
    TResult Function(Forbidden value)? forbidden,
    TResult Function(Internal value)? internal,
    TResult Function(Conflict value)? conflict,
    TResult Function(NotFound value)? notFound,
    TResult Function(Network value)? network,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized(this);
    }
    return orElse();
  }
}

abstract class Unauthorized implements GroupRepositoryFailure {
  const factory Unauthorized() = _$Unauthorized;
}

/// @nodoc
abstract class _$$ForbiddenCopyWith<$Res> {
  factory _$$ForbiddenCopyWith(
          _$Forbidden value, $Res Function(_$Forbidden) then) =
      __$$ForbiddenCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ForbiddenCopyWithImpl<$Res>
    extends _$GroupRepositoryFailureCopyWithImpl<$Res, _$Forbidden>
    implements _$$ForbiddenCopyWith<$Res> {
  __$$ForbiddenCopyWithImpl(
      _$Forbidden _value, $Res Function(_$Forbidden) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Forbidden implements Forbidden {
  const _$Forbidden();

  @override
  String toString() {
    return 'GroupRepositoryFailure.forbidden()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Forbidden);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String error) validation,
    required TResult Function() unauthorized,
    required TResult Function() forbidden,
    required TResult Function() internal,
    required TResult Function() conflict,
    required TResult Function() notFound,
    required TResult Function(String error) network,
  }) {
    return forbidden();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String error)? validation,
    TResult? Function()? unauthorized,
    TResult? Function()? forbidden,
    TResult? Function()? internal,
    TResult? Function()? conflict,
    TResult? Function()? notFound,
    TResult? Function(String error)? network,
  }) {
    return forbidden?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String error)? validation,
    TResult Function()? unauthorized,
    TResult Function()? forbidden,
    TResult Function()? internal,
    TResult Function()? conflict,
    TResult Function()? notFound,
    TResult Function(String error)? network,
    required TResult orElse(),
  }) {
    if (forbidden != null) {
      return forbidden();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Validation value) validation,
    required TResult Function(Unauthorized value) unauthorized,
    required TResult Function(Forbidden value) forbidden,
    required TResult Function(Internal value) internal,
    required TResult Function(Conflict value) conflict,
    required TResult Function(NotFound value) notFound,
    required TResult Function(Network value) network,
  }) {
    return forbidden(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Validation value)? validation,
    TResult? Function(Unauthorized value)? unauthorized,
    TResult? Function(Forbidden value)? forbidden,
    TResult? Function(Internal value)? internal,
    TResult? Function(Conflict value)? conflict,
    TResult? Function(NotFound value)? notFound,
    TResult? Function(Network value)? network,
  }) {
    return forbidden?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Validation value)? validation,
    TResult Function(Unauthorized value)? unauthorized,
    TResult Function(Forbidden value)? forbidden,
    TResult Function(Internal value)? internal,
    TResult Function(Conflict value)? conflict,
    TResult Function(NotFound value)? notFound,
    TResult Function(Network value)? network,
    required TResult orElse(),
  }) {
    if (forbidden != null) {
      return forbidden(this);
    }
    return orElse();
  }
}

abstract class Forbidden implements GroupRepositoryFailure {
  const factory Forbidden() = _$Forbidden;
}

/// @nodoc
abstract class _$$InternalCopyWith<$Res> {
  factory _$$InternalCopyWith(
          _$Internal value, $Res Function(_$Internal) then) =
      __$$InternalCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InternalCopyWithImpl<$Res>
    extends _$GroupRepositoryFailureCopyWithImpl<$Res, _$Internal>
    implements _$$InternalCopyWith<$Res> {
  __$$InternalCopyWithImpl(_$Internal _value, $Res Function(_$Internal) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Internal implements Internal {
  const _$Internal();

  @override
  String toString() {
    return 'GroupRepositoryFailure.internal()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Internal);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String error) validation,
    required TResult Function() unauthorized,
    required TResult Function() forbidden,
    required TResult Function() internal,
    required TResult Function() conflict,
    required TResult Function() notFound,
    required TResult Function(String error) network,
  }) {
    return internal();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String error)? validation,
    TResult? Function()? unauthorized,
    TResult? Function()? forbidden,
    TResult? Function()? internal,
    TResult? Function()? conflict,
    TResult? Function()? notFound,
    TResult? Function(String error)? network,
  }) {
    return internal?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String error)? validation,
    TResult Function()? unauthorized,
    TResult Function()? forbidden,
    TResult Function()? internal,
    TResult Function()? conflict,
    TResult Function()? notFound,
    TResult Function(String error)? network,
    required TResult orElse(),
  }) {
    if (internal != null) {
      return internal();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Validation value) validation,
    required TResult Function(Unauthorized value) unauthorized,
    required TResult Function(Forbidden value) forbidden,
    required TResult Function(Internal value) internal,
    required TResult Function(Conflict value) conflict,
    required TResult Function(NotFound value) notFound,
    required TResult Function(Network value) network,
  }) {
    return internal(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Validation value)? validation,
    TResult? Function(Unauthorized value)? unauthorized,
    TResult? Function(Forbidden value)? forbidden,
    TResult? Function(Internal value)? internal,
    TResult? Function(Conflict value)? conflict,
    TResult? Function(NotFound value)? notFound,
    TResult? Function(Network value)? network,
  }) {
    return internal?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Validation value)? validation,
    TResult Function(Unauthorized value)? unauthorized,
    TResult Function(Forbidden value)? forbidden,
    TResult Function(Internal value)? internal,
    TResult Function(Conflict value)? conflict,
    TResult Function(NotFound value)? notFound,
    TResult Function(Network value)? network,
    required TResult orElse(),
  }) {
    if (internal != null) {
      return internal(this);
    }
    return orElse();
  }
}

abstract class Internal implements GroupRepositoryFailure {
  const factory Internal() = _$Internal;
}

/// @nodoc
abstract class _$$ConflictCopyWith<$Res> {
  factory _$$ConflictCopyWith(
          _$Conflict value, $Res Function(_$Conflict) then) =
      __$$ConflictCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ConflictCopyWithImpl<$Res>
    extends _$GroupRepositoryFailureCopyWithImpl<$Res, _$Conflict>
    implements _$$ConflictCopyWith<$Res> {
  __$$ConflictCopyWithImpl(_$Conflict _value, $Res Function(_$Conflict) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Conflict implements Conflict {
  const _$Conflict();

  @override
  String toString() {
    return 'GroupRepositoryFailure.conflict()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Conflict);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String error) validation,
    required TResult Function() unauthorized,
    required TResult Function() forbidden,
    required TResult Function() internal,
    required TResult Function() conflict,
    required TResult Function() notFound,
    required TResult Function(String error) network,
  }) {
    return conflict();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String error)? validation,
    TResult? Function()? unauthorized,
    TResult? Function()? forbidden,
    TResult? Function()? internal,
    TResult? Function()? conflict,
    TResult? Function()? notFound,
    TResult? Function(String error)? network,
  }) {
    return conflict?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String error)? validation,
    TResult Function()? unauthorized,
    TResult Function()? forbidden,
    TResult Function()? internal,
    TResult Function()? conflict,
    TResult Function()? notFound,
    TResult Function(String error)? network,
    required TResult orElse(),
  }) {
    if (conflict != null) {
      return conflict();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Validation value) validation,
    required TResult Function(Unauthorized value) unauthorized,
    required TResult Function(Forbidden value) forbidden,
    required TResult Function(Internal value) internal,
    required TResult Function(Conflict value) conflict,
    required TResult Function(NotFound value) notFound,
    required TResult Function(Network value) network,
  }) {
    return conflict(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Validation value)? validation,
    TResult? Function(Unauthorized value)? unauthorized,
    TResult? Function(Forbidden value)? forbidden,
    TResult? Function(Internal value)? internal,
    TResult? Function(Conflict value)? conflict,
    TResult? Function(NotFound value)? notFound,
    TResult? Function(Network value)? network,
  }) {
    return conflict?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Validation value)? validation,
    TResult Function(Unauthorized value)? unauthorized,
    TResult Function(Forbidden value)? forbidden,
    TResult Function(Internal value)? internal,
    TResult Function(Conflict value)? conflict,
    TResult Function(NotFound value)? notFound,
    TResult Function(Network value)? network,
    required TResult orElse(),
  }) {
    if (conflict != null) {
      return conflict(this);
    }
    return orElse();
  }
}

abstract class Conflict implements GroupRepositoryFailure {
  const factory Conflict() = _$Conflict;
}

/// @nodoc
abstract class _$$NotFoundCopyWith<$Res> {
  factory _$$NotFoundCopyWith(
          _$NotFound value, $Res Function(_$NotFound) then) =
      __$$NotFoundCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NotFoundCopyWithImpl<$Res>
    extends _$GroupRepositoryFailureCopyWithImpl<$Res, _$NotFound>
    implements _$$NotFoundCopyWith<$Res> {
  __$$NotFoundCopyWithImpl(_$NotFound _value, $Res Function(_$NotFound) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NotFound implements NotFound {
  const _$NotFound();

  @override
  String toString() {
    return 'GroupRepositoryFailure.notFound()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NotFound);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String error) validation,
    required TResult Function() unauthorized,
    required TResult Function() forbidden,
    required TResult Function() internal,
    required TResult Function() conflict,
    required TResult Function() notFound,
    required TResult Function(String error) network,
  }) {
    return notFound();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String error)? validation,
    TResult? Function()? unauthorized,
    TResult? Function()? forbidden,
    TResult? Function()? internal,
    TResult? Function()? conflict,
    TResult? Function()? notFound,
    TResult? Function(String error)? network,
  }) {
    return notFound?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String error)? validation,
    TResult Function()? unauthorized,
    TResult Function()? forbidden,
    TResult Function()? internal,
    TResult Function()? conflict,
    TResult Function()? notFound,
    TResult Function(String error)? network,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Validation value) validation,
    required TResult Function(Unauthorized value) unauthorized,
    required TResult Function(Forbidden value) forbidden,
    required TResult Function(Internal value) internal,
    required TResult Function(Conflict value) conflict,
    required TResult Function(NotFound value) notFound,
    required TResult Function(Network value) network,
  }) {
    return notFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Validation value)? validation,
    TResult? Function(Unauthorized value)? unauthorized,
    TResult? Function(Forbidden value)? forbidden,
    TResult? Function(Internal value)? internal,
    TResult? Function(Conflict value)? conflict,
    TResult? Function(NotFound value)? notFound,
    TResult? Function(Network value)? network,
  }) {
    return notFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Validation value)? validation,
    TResult Function(Unauthorized value)? unauthorized,
    TResult Function(Forbidden value)? forbidden,
    TResult Function(Internal value)? internal,
    TResult Function(Conflict value)? conflict,
    TResult Function(NotFound value)? notFound,
    TResult Function(Network value)? network,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(this);
    }
    return orElse();
  }
}

abstract class NotFound implements GroupRepositoryFailure {
  const factory NotFound() = _$NotFound;
}

/// @nodoc
abstract class _$$NetworkCopyWith<$Res> {
  factory _$$NetworkCopyWith(_$Network value, $Res Function(_$Network) then) =
      __$$NetworkCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$NetworkCopyWithImpl<$Res>
    extends _$GroupRepositoryFailureCopyWithImpl<$Res, _$Network>
    implements _$$NetworkCopyWith<$Res> {
  __$$NetworkCopyWithImpl(_$Network _value, $Res Function(_$Network) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$Network(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Network implements Network {
  const _$Network({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'GroupRepositoryFailure.network(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Network &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NetworkCopyWith<_$Network> get copyWith =>
      __$$NetworkCopyWithImpl<_$Network>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String error) validation,
    required TResult Function() unauthorized,
    required TResult Function() forbidden,
    required TResult Function() internal,
    required TResult Function() conflict,
    required TResult Function() notFound,
    required TResult Function(String error) network,
  }) {
    return network(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String error)? validation,
    TResult? Function()? unauthorized,
    TResult? Function()? forbidden,
    TResult? Function()? internal,
    TResult? Function()? conflict,
    TResult? Function()? notFound,
    TResult? Function(String error)? network,
  }) {
    return network?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String error)? validation,
    TResult Function()? unauthorized,
    TResult Function()? forbidden,
    TResult Function()? internal,
    TResult Function()? conflict,
    TResult Function()? notFound,
    TResult Function(String error)? network,
    required TResult orElse(),
  }) {
    if (network != null) {
      return network(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Validation value) validation,
    required TResult Function(Unauthorized value) unauthorized,
    required TResult Function(Forbidden value) forbidden,
    required TResult Function(Internal value) internal,
    required TResult Function(Conflict value) conflict,
    required TResult Function(NotFound value) notFound,
    required TResult Function(Network value) network,
  }) {
    return network(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Validation value)? validation,
    TResult? Function(Unauthorized value)? unauthorized,
    TResult? Function(Forbidden value)? forbidden,
    TResult? Function(Internal value)? internal,
    TResult? Function(Conflict value)? conflict,
    TResult? Function(NotFound value)? notFound,
    TResult? Function(Network value)? network,
  }) {
    return network?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Validation value)? validation,
    TResult Function(Unauthorized value)? unauthorized,
    TResult Function(Forbidden value)? forbidden,
    TResult Function(Internal value)? internal,
    TResult Function(Conflict value)? conflict,
    TResult Function(NotFound value)? notFound,
    TResult Function(Network value)? network,
    required TResult orElse(),
  }) {
    if (network != null) {
      return network(this);
    }
    return orElse();
  }
}

abstract class Network implements GroupRepositoryFailure {
  const factory Network({required final String error}) = _$Network;

  String get error;
  @JsonKey(ignore: true)
  _$$NetworkCopyWith<_$Network> get copyWith =>
      throw _privateConstructorUsedError;
}
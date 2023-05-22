// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_service.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthServerFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String error) validation,
    required TResult Function() unauthorized,
    required TResult Function() internal,
    required TResult Function(String error) network,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String error)? validation,
    TResult? Function()? unauthorized,
    TResult? Function()? internal,
    TResult? Function(String error)? network,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String error)? validation,
    TResult Function()? unauthorized,
    TResult Function()? internal,
    TResult Function(String error)? network,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Validation value) validation,
    required TResult Function(Unauthorized value) unauthorized,
    required TResult Function(Internal value) internal,
    required TResult Function(Network value) network,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Validation value)? validation,
    TResult? Function(Unauthorized value)? unauthorized,
    TResult? Function(Internal value)? internal,
    TResult? Function(Network value)? network,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Validation value)? validation,
    TResult Function(Unauthorized value)? unauthorized,
    TResult Function(Internal value)? internal,
    TResult Function(Network value)? network,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthServerFailureCopyWith<$Res> {
  factory $AuthServerFailureCopyWith(
          AuthServerFailure value, $Res Function(AuthServerFailure) then) =
      _$AuthServerFailureCopyWithImpl<$Res, AuthServerFailure>;
}

/// @nodoc
class _$AuthServerFailureCopyWithImpl<$Res, $Val extends AuthServerFailure>
    implements $AuthServerFailureCopyWith<$Res> {
  _$AuthServerFailureCopyWithImpl(this._value, this._then);

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
    extends _$AuthServerFailureCopyWithImpl<$Res, _$Validation>
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
    return 'AuthServerFailure.validation(error: $error)';
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
    required TResult Function() internal,
    required TResult Function(String error) network,
  }) {
    return validation(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String error)? validation,
    TResult? Function()? unauthorized,
    TResult? Function()? internal,
    TResult? Function(String error)? network,
  }) {
    return validation?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String error)? validation,
    TResult Function()? unauthorized,
    TResult Function()? internal,
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
    required TResult Function(Internal value) internal,
    required TResult Function(Network value) network,
  }) {
    return validation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Validation value)? validation,
    TResult? Function(Unauthorized value)? unauthorized,
    TResult? Function(Internal value)? internal,
    TResult? Function(Network value)? network,
  }) {
    return validation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Validation value)? validation,
    TResult Function(Unauthorized value)? unauthorized,
    TResult Function(Internal value)? internal,
    TResult Function(Network value)? network,
    required TResult orElse(),
  }) {
    if (validation != null) {
      return validation(this);
    }
    return orElse();
  }
}

abstract class Validation implements AuthServerFailure {
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
    extends _$AuthServerFailureCopyWithImpl<$Res, _$Unauthorized>
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
    return 'AuthServerFailure.unauthorized()';
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
    required TResult Function() internal,
    required TResult Function(String error) network,
  }) {
    return unauthorized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String error)? validation,
    TResult? Function()? unauthorized,
    TResult? Function()? internal,
    TResult? Function(String error)? network,
  }) {
    return unauthorized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String error)? validation,
    TResult Function()? unauthorized,
    TResult Function()? internal,
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
    required TResult Function(Internal value) internal,
    required TResult Function(Network value) network,
  }) {
    return unauthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Validation value)? validation,
    TResult? Function(Unauthorized value)? unauthorized,
    TResult? Function(Internal value)? internal,
    TResult? Function(Network value)? network,
  }) {
    return unauthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Validation value)? validation,
    TResult Function(Unauthorized value)? unauthorized,
    TResult Function(Internal value)? internal,
    TResult Function(Network value)? network,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized(this);
    }
    return orElse();
  }
}

abstract class Unauthorized implements AuthServerFailure {
  const factory Unauthorized() = _$Unauthorized;
}

/// @nodoc
abstract class _$$InternalCopyWith<$Res> {
  factory _$$InternalCopyWith(
          _$Internal value, $Res Function(_$Internal) then) =
      __$$InternalCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InternalCopyWithImpl<$Res>
    extends _$AuthServerFailureCopyWithImpl<$Res, _$Internal>
    implements _$$InternalCopyWith<$Res> {
  __$$InternalCopyWithImpl(_$Internal _value, $Res Function(_$Internal) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Internal implements Internal {
  const _$Internal();

  @override
  String toString() {
    return 'AuthServerFailure.internal()';
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
    required TResult Function() internal,
    required TResult Function(String error) network,
  }) {
    return internal();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String error)? validation,
    TResult? Function()? unauthorized,
    TResult? Function()? internal,
    TResult? Function(String error)? network,
  }) {
    return internal?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String error)? validation,
    TResult Function()? unauthorized,
    TResult Function()? internal,
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
    required TResult Function(Internal value) internal,
    required TResult Function(Network value) network,
  }) {
    return internal(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Validation value)? validation,
    TResult? Function(Unauthorized value)? unauthorized,
    TResult? Function(Internal value)? internal,
    TResult? Function(Network value)? network,
  }) {
    return internal?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Validation value)? validation,
    TResult Function(Unauthorized value)? unauthorized,
    TResult Function(Internal value)? internal,
    TResult Function(Network value)? network,
    required TResult orElse(),
  }) {
    if (internal != null) {
      return internal(this);
    }
    return orElse();
  }
}

abstract class Internal implements AuthServerFailure {
  const factory Internal() = _$Internal;
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
    extends _$AuthServerFailureCopyWithImpl<$Res, _$Network>
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
    return 'AuthServerFailure.network(error: $error)';
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
    required TResult Function() internal,
    required TResult Function(String error) network,
  }) {
    return network(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String error)? validation,
    TResult? Function()? unauthorized,
    TResult? Function()? internal,
    TResult? Function(String error)? network,
  }) {
    return network?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String error)? validation,
    TResult Function()? unauthorized,
    TResult Function()? internal,
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
    required TResult Function(Internal value) internal,
    required TResult Function(Network value) network,
  }) {
    return network(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Validation value)? validation,
    TResult? Function(Unauthorized value)? unauthorized,
    TResult? Function(Internal value)? internal,
    TResult? Function(Network value)? network,
  }) {
    return network?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Validation value)? validation,
    TResult Function(Unauthorized value)? unauthorized,
    TResult Function(Internal value)? internal,
    TResult Function(Network value)? network,
    required TResult orElse(),
  }) {
    if (network != null) {
      return network(this);
    }
    return orElse();
  }
}

abstract class Network implements AuthServerFailure {
  const factory Network({required final String error}) = _$Network;

  String get error;
  @JsonKey(ignore: true)
  _$$NetworkCopyWith<_$Network> get copyWith =>
      throw _privateConstructorUsedError;
}

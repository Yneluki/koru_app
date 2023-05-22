// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignInFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<InputDataFailure> failures) invalidData,
    required TResult Function(AuthServerFailure failure) authServerError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<InputDataFailure> failures)? invalidData,
    TResult? Function(AuthServerFailure failure)? authServerError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<InputDataFailure> failures)? invalidData,
    TResult Function(AuthServerFailure failure)? authServerError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidData value) invalidData,
    required TResult Function(AuthServerError value) authServerError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InvalidData value)? invalidData,
    TResult? Function(AuthServerError value)? authServerError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidData value)? invalidData,
    TResult Function(AuthServerError value)? authServerError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInFailureCopyWith<$Res> {
  factory $SignInFailureCopyWith(
          SignInFailure value, $Res Function(SignInFailure) then) =
      _$SignInFailureCopyWithImpl<$Res, SignInFailure>;
}

/// @nodoc
class _$SignInFailureCopyWithImpl<$Res, $Val extends SignInFailure>
    implements $SignInFailureCopyWith<$Res> {
  _$SignInFailureCopyWithImpl(this._value, this._then);

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
    extends _$SignInFailureCopyWithImpl<$Res, _$InvalidData>
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
    return 'SignInFailure.invalidData(failures: $failures)';
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
    required TResult Function(AuthServerFailure failure) authServerError,
  }) {
    return invalidData(failures);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<InputDataFailure> failures)? invalidData,
    TResult? Function(AuthServerFailure failure)? authServerError,
  }) {
    return invalidData?.call(failures);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<InputDataFailure> failures)? invalidData,
    TResult Function(AuthServerFailure failure)? authServerError,
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
    required TResult Function(AuthServerError value) authServerError,
  }) {
    return invalidData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InvalidData value)? invalidData,
    TResult? Function(AuthServerError value)? authServerError,
  }) {
    return invalidData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidData value)? invalidData,
    TResult Function(AuthServerError value)? authServerError,
    required TResult orElse(),
  }) {
    if (invalidData != null) {
      return invalidData(this);
    }
    return orElse();
  }
}

abstract class InvalidData implements SignInFailure {
  const factory InvalidData({required final List<InputDataFailure> failures}) =
      _$InvalidData;

  List<InputDataFailure> get failures;
  @JsonKey(ignore: true)
  _$$InvalidDataCopyWith<_$InvalidData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthServerErrorCopyWith<$Res> {
  factory _$$AuthServerErrorCopyWith(
          _$AuthServerError value, $Res Function(_$AuthServerError) then) =
      __$$AuthServerErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({AuthServerFailure failure});

  $AuthServerFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$AuthServerErrorCopyWithImpl<$Res>
    extends _$SignInFailureCopyWithImpl<$Res, _$AuthServerError>
    implements _$$AuthServerErrorCopyWith<$Res> {
  __$$AuthServerErrorCopyWithImpl(
      _$AuthServerError _value, $Res Function(_$AuthServerError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$AuthServerError(
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as AuthServerFailure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AuthServerFailureCopyWith<$Res> get failure {
    return $AuthServerFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$AuthServerError implements AuthServerError {
  const _$AuthServerError({required this.failure});

  @override
  final AuthServerFailure failure;

  @override
  String toString() {
    return 'SignInFailure.authServerError(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthServerError &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthServerErrorCopyWith<_$AuthServerError> get copyWith =>
      __$$AuthServerErrorCopyWithImpl<_$AuthServerError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<InputDataFailure> failures) invalidData,
    required TResult Function(AuthServerFailure failure) authServerError,
  }) {
    return authServerError(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<InputDataFailure> failures)? invalidData,
    TResult? Function(AuthServerFailure failure)? authServerError,
  }) {
    return authServerError?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<InputDataFailure> failures)? invalidData,
    TResult Function(AuthServerFailure failure)? authServerError,
    required TResult orElse(),
  }) {
    if (authServerError != null) {
      return authServerError(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidData value) invalidData,
    required TResult Function(AuthServerError value) authServerError,
  }) {
    return authServerError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InvalidData value)? invalidData,
    TResult? Function(AuthServerError value)? authServerError,
  }) {
    return authServerError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidData value)? invalidData,
    TResult Function(AuthServerError value)? authServerError,
    required TResult orElse(),
  }) {
    if (authServerError != null) {
      return authServerError(this);
    }
    return orElse();
  }
}

abstract class AuthServerError implements SignInFailure {
  const factory AuthServerError({required final AuthServerFailure failure}) =
      _$AuthServerError;

  AuthServerFailure get failure;
  @JsonKey(ignore: true)
  _$$AuthServerErrorCopyWith<_$AuthServerError> get copyWith =>
      throw _privateConstructorUsedError;
}

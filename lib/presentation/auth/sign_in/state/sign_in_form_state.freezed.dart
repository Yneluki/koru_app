// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in_form_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignInFormState {
  Either<InputDataFailure, EmailAddress> get emailAddress =>
      throw _privateConstructorUsedError;
  Either<InputDataFailure, Password> get password =>
      throw _privateConstructorUsedError;
  Option<Either<SignInFailure, AuthUser>> get signInResult =>
      throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignInFormStateCopyWith<SignInFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInFormStateCopyWith<$Res> {
  factory $SignInFormStateCopyWith(
          SignInFormState value, $Res Function(SignInFormState) then) =
      _$SignInFormStateCopyWithImpl<$Res, SignInFormState>;
  @useResult
  $Res call(
      {Either<InputDataFailure, EmailAddress> emailAddress,
      Either<InputDataFailure, Password> password,
      Option<Either<SignInFailure, AuthUser>> signInResult,
      bool isSubmitting});
}

/// @nodoc
class _$SignInFormStateCopyWithImpl<$Res, $Val extends SignInFormState>
    implements $SignInFormStateCopyWith<$Res> {
  _$SignInFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailAddress = null,
    Object? password = null,
    Object? signInResult = null,
    Object? isSubmitting = null,
  }) {
    return _then(_value.copyWith(
      emailAddress: null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as Either<InputDataFailure, EmailAddress>,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Either<InputDataFailure, Password>,
      signInResult: null == signInResult
          ? _value.signInResult
          : signInResult // ignore: cast_nullable_to_non_nullable
              as Option<Either<SignInFailure, AuthUser>>,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SignInFormStateCopyWith<$Res>
    implements $SignInFormStateCopyWith<$Res> {
  factory _$$_SignInFormStateCopyWith(
          _$_SignInFormState value, $Res Function(_$_SignInFormState) then) =
      __$$_SignInFormStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Either<InputDataFailure, EmailAddress> emailAddress,
      Either<InputDataFailure, Password> password,
      Option<Either<SignInFailure, AuthUser>> signInResult,
      bool isSubmitting});
}

/// @nodoc
class __$$_SignInFormStateCopyWithImpl<$Res>
    extends _$SignInFormStateCopyWithImpl<$Res, _$_SignInFormState>
    implements _$$_SignInFormStateCopyWith<$Res> {
  __$$_SignInFormStateCopyWithImpl(
      _$_SignInFormState _value, $Res Function(_$_SignInFormState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailAddress = null,
    Object? password = null,
    Object? signInResult = null,
    Object? isSubmitting = null,
  }) {
    return _then(_$_SignInFormState(
      emailAddress: null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as Either<InputDataFailure, EmailAddress>,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Either<InputDataFailure, Password>,
      signInResult: null == signInResult
          ? _value.signInResult
          : signInResult // ignore: cast_nullable_to_non_nullable
              as Option<Either<SignInFailure, AuthUser>>,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_SignInFormState implements _SignInFormState {
  const _$_SignInFormState(
      {required this.emailAddress,
      required this.password,
      required this.signInResult,
      required this.isSubmitting});

  @override
  final Either<InputDataFailure, EmailAddress> emailAddress;
  @override
  final Either<InputDataFailure, Password> password;
  @override
  final Option<Either<SignInFailure, AuthUser>> signInResult;
  @override
  final bool isSubmitting;

  @override
  String toString() {
    return 'SignInFormState(emailAddress: $emailAddress, password: $password, signInResult: $signInResult, isSubmitting: $isSubmitting)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignInFormState &&
            (identical(other.emailAddress, emailAddress) ||
                other.emailAddress == emailAddress) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.signInResult, signInResult) ||
                other.signInResult == signInResult) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, emailAddress, password, signInResult, isSubmitting);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignInFormStateCopyWith<_$_SignInFormState> get copyWith =>
      __$$_SignInFormStateCopyWithImpl<_$_SignInFormState>(this, _$identity);
}

abstract class _SignInFormState implements SignInFormState {
  const factory _SignInFormState(
      {required final Either<InputDataFailure, EmailAddress> emailAddress,
      required final Either<InputDataFailure, Password> password,
      required final Option<Either<SignInFailure, AuthUser>> signInResult,
      required final bool isSubmitting}) = _$_SignInFormState;

  @override
  Either<InputDataFailure, EmailAddress> get emailAddress;
  @override
  Either<InputDataFailure, Password> get password;
  @override
  Option<Either<SignInFailure, AuthUser>> get signInResult;
  @override
  bool get isSubmitting;
  @override
  @JsonKey(ignore: true)
  _$$_SignInFormStateCopyWith<_$_SignInFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

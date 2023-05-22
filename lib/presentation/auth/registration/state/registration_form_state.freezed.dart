// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'registration_form_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RegistrationFormState {
  Either<InputDataFailure, UserName> get userName =>
      throw _privateConstructorUsedError;
  Either<InputDataFailure, EmailAddress> get emailAddress =>
      throw _privateConstructorUsedError;
  Either<InputDataFailure, Password> get password =>
      throw _privateConstructorUsedError;
  Either<InputDataFailure, Password> get confirmPassword =>
      throw _privateConstructorUsedError;
  Option<Either<RegisterFailure, Unit>> get registrationResult =>
      throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegistrationFormStateCopyWith<RegistrationFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistrationFormStateCopyWith<$Res> {
  factory $RegistrationFormStateCopyWith(RegistrationFormState value,
          $Res Function(RegistrationFormState) then) =
      _$RegistrationFormStateCopyWithImpl<$Res, RegistrationFormState>;
  @useResult
  $Res call(
      {Either<InputDataFailure, UserName> userName,
      Either<InputDataFailure, EmailAddress> emailAddress,
      Either<InputDataFailure, Password> password,
      Either<InputDataFailure, Password> confirmPassword,
      Option<Either<RegisterFailure, Unit>> registrationResult,
      bool isSubmitting});
}

/// @nodoc
class _$RegistrationFormStateCopyWithImpl<$Res,
        $Val extends RegistrationFormState>
    implements $RegistrationFormStateCopyWith<$Res> {
  _$RegistrationFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = null,
    Object? emailAddress = null,
    Object? password = null,
    Object? confirmPassword = null,
    Object? registrationResult = null,
    Object? isSubmitting = null,
  }) {
    return _then(_value.copyWith(
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as Either<InputDataFailure, UserName>,
      emailAddress: null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as Either<InputDataFailure, EmailAddress>,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Either<InputDataFailure, Password>,
      confirmPassword: null == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as Either<InputDataFailure, Password>,
      registrationResult: null == registrationResult
          ? _value.registrationResult
          : registrationResult // ignore: cast_nullable_to_non_nullable
              as Option<Either<RegisterFailure, Unit>>,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RegistrationFormStateCopyWith<$Res>
    implements $RegistrationFormStateCopyWith<$Res> {
  factory _$$_RegistrationFormStateCopyWith(_$_RegistrationFormState value,
          $Res Function(_$_RegistrationFormState) then) =
      __$$_RegistrationFormStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Either<InputDataFailure, UserName> userName,
      Either<InputDataFailure, EmailAddress> emailAddress,
      Either<InputDataFailure, Password> password,
      Either<InputDataFailure, Password> confirmPassword,
      Option<Either<RegisterFailure, Unit>> registrationResult,
      bool isSubmitting});
}

/// @nodoc
class __$$_RegistrationFormStateCopyWithImpl<$Res>
    extends _$RegistrationFormStateCopyWithImpl<$Res, _$_RegistrationFormState>
    implements _$$_RegistrationFormStateCopyWith<$Res> {
  __$$_RegistrationFormStateCopyWithImpl(_$_RegistrationFormState _value,
      $Res Function(_$_RegistrationFormState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = null,
    Object? emailAddress = null,
    Object? password = null,
    Object? confirmPassword = null,
    Object? registrationResult = null,
    Object? isSubmitting = null,
  }) {
    return _then(_$_RegistrationFormState(
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as Either<InputDataFailure, UserName>,
      emailAddress: null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as Either<InputDataFailure, EmailAddress>,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Either<InputDataFailure, Password>,
      confirmPassword: null == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as Either<InputDataFailure, Password>,
      registrationResult: null == registrationResult
          ? _value.registrationResult
          : registrationResult // ignore: cast_nullable_to_non_nullable
              as Option<Either<RegisterFailure, Unit>>,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_RegistrationFormState implements _RegistrationFormState {
  const _$_RegistrationFormState(
      {required this.userName,
      required this.emailAddress,
      required this.password,
      required this.confirmPassword,
      required this.registrationResult,
      required this.isSubmitting});

  @override
  final Either<InputDataFailure, UserName> userName;
  @override
  final Either<InputDataFailure, EmailAddress> emailAddress;
  @override
  final Either<InputDataFailure, Password> password;
  @override
  final Either<InputDataFailure, Password> confirmPassword;
  @override
  final Option<Either<RegisterFailure, Unit>> registrationResult;
  @override
  final bool isSubmitting;

  @override
  String toString() {
    return 'RegistrationFormState(userName: $userName, emailAddress: $emailAddress, password: $password, confirmPassword: $confirmPassword, registrationResult: $registrationResult, isSubmitting: $isSubmitting)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegistrationFormState &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.emailAddress, emailAddress) ||
                other.emailAddress == emailAddress) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword) &&
            (identical(other.registrationResult, registrationResult) ||
                other.registrationResult == registrationResult) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userName, emailAddress, password,
      confirmPassword, registrationResult, isSubmitting);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegistrationFormStateCopyWith<_$_RegistrationFormState> get copyWith =>
      __$$_RegistrationFormStateCopyWithImpl<_$_RegistrationFormState>(
          this, _$identity);
}

abstract class _RegistrationFormState implements RegistrationFormState {
  const factory _RegistrationFormState(
      {required final Either<InputDataFailure, UserName> userName,
      required final Either<InputDataFailure, EmailAddress> emailAddress,
      required final Either<InputDataFailure, Password> password,
      required final Either<InputDataFailure, Password> confirmPassword,
      required final Option<Either<RegisterFailure, Unit>> registrationResult,
      required final bool isSubmitting}) = _$_RegistrationFormState;

  @override
  Either<InputDataFailure, UserName> get userName;
  @override
  Either<InputDataFailure, EmailAddress> get emailAddress;
  @override
  Either<InputDataFailure, Password> get password;
  @override
  Either<InputDataFailure, Password> get confirmPassword;
  @override
  Option<Either<RegisterFailure, Unit>> get registrationResult;
  @override
  bool get isSubmitting;
  @override
  @JsonKey(ignore: true)
  _$$_RegistrationFormStateCopyWith<_$_RegistrationFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

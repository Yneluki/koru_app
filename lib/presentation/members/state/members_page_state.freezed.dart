// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'members_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MembersPageState {
  Either<InputDataFailure, MemberColor> get color =>
      throw _privateConstructorUsedError;
  Option<Either<ChangeColorFailure, Unit>> get changeColorResult =>
      throw _privateConstructorUsedError;
  Option<Either<GenerateTokenFailure, String>> get generateTokenResult =>
      throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MembersPageStateCopyWith<MembersPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MembersPageStateCopyWith<$Res> {
  factory $MembersPageStateCopyWith(
          MembersPageState value, $Res Function(MembersPageState) then) =
      _$MembersPageStateCopyWithImpl<$Res, MembersPageState>;
  @useResult
  $Res call(
      {Either<InputDataFailure, MemberColor> color,
      Option<Either<ChangeColorFailure, Unit>> changeColorResult,
      Option<Either<GenerateTokenFailure, String>> generateTokenResult,
      bool isSubmitting});
}

/// @nodoc
class _$MembersPageStateCopyWithImpl<$Res, $Val extends MembersPageState>
    implements $MembersPageStateCopyWith<$Res> {
  _$MembersPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? color = null,
    Object? changeColorResult = null,
    Object? generateTokenResult = null,
    Object? isSubmitting = null,
  }) {
    return _then(_value.copyWith(
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Either<InputDataFailure, MemberColor>,
      changeColorResult: null == changeColorResult
          ? _value.changeColorResult
          : changeColorResult // ignore: cast_nullable_to_non_nullable
              as Option<Either<ChangeColorFailure, Unit>>,
      generateTokenResult: null == generateTokenResult
          ? _value.generateTokenResult
          : generateTokenResult // ignore: cast_nullable_to_non_nullable
              as Option<Either<GenerateTokenFailure, String>>,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MembersPageStateCopyWith<$Res>
    implements $MembersPageStateCopyWith<$Res> {
  factory _$$_MembersPageStateCopyWith(
          _$_MembersPageState value, $Res Function(_$_MembersPageState) then) =
      __$$_MembersPageStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Either<InputDataFailure, MemberColor> color,
      Option<Either<ChangeColorFailure, Unit>> changeColorResult,
      Option<Either<GenerateTokenFailure, String>> generateTokenResult,
      bool isSubmitting});
}

/// @nodoc
class __$$_MembersPageStateCopyWithImpl<$Res>
    extends _$MembersPageStateCopyWithImpl<$Res, _$_MembersPageState>
    implements _$$_MembersPageStateCopyWith<$Res> {
  __$$_MembersPageStateCopyWithImpl(
      _$_MembersPageState _value, $Res Function(_$_MembersPageState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? color = null,
    Object? changeColorResult = null,
    Object? generateTokenResult = null,
    Object? isSubmitting = null,
  }) {
    return _then(_$_MembersPageState(
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Either<InputDataFailure, MemberColor>,
      changeColorResult: null == changeColorResult
          ? _value.changeColorResult
          : changeColorResult // ignore: cast_nullable_to_non_nullable
              as Option<Either<ChangeColorFailure, Unit>>,
      generateTokenResult: null == generateTokenResult
          ? _value.generateTokenResult
          : generateTokenResult // ignore: cast_nullable_to_non_nullable
              as Option<Either<GenerateTokenFailure, String>>,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_MembersPageState implements _MembersPageState {
  const _$_MembersPageState(
      {required this.color,
      required this.changeColorResult,
      required this.generateTokenResult,
      required this.isSubmitting});

  @override
  final Either<InputDataFailure, MemberColor> color;
  @override
  final Option<Either<ChangeColorFailure, Unit>> changeColorResult;
  @override
  final Option<Either<GenerateTokenFailure, String>> generateTokenResult;
  @override
  final bool isSubmitting;

  @override
  String toString() {
    return 'MembersPageState(color: $color, changeColorResult: $changeColorResult, generateTokenResult: $generateTokenResult, isSubmitting: $isSubmitting)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MembersPageState &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.changeColorResult, changeColorResult) ||
                other.changeColorResult == changeColorResult) &&
            (identical(other.generateTokenResult, generateTokenResult) ||
                other.generateTokenResult == generateTokenResult) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, color, changeColorResult, generateTokenResult, isSubmitting);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MembersPageStateCopyWith<_$_MembersPageState> get copyWith =>
      __$$_MembersPageStateCopyWithImpl<_$_MembersPageState>(this, _$identity);
}

abstract class _MembersPageState implements MembersPageState {
  const factory _MembersPageState(
      {required final Either<InputDataFailure, MemberColor> color,
      required final Option<Either<ChangeColorFailure, Unit>> changeColorResult,
      required final Option<Either<GenerateTokenFailure, String>>
          generateTokenResult,
      required final bool isSubmitting}) = _$_MembersPageState;

  @override
  Either<InputDataFailure, MemberColor> get color;
  @override
  Option<Either<ChangeColorFailure, Unit>> get changeColorResult;
  @override
  Option<Either<GenerateTokenFailure, String>> get generateTokenResult;
  @override
  bool get isSubmitting;
  @override
  @JsonKey(ignore: true)
  _$$_MembersPageStateCopyWith<_$_MembersPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

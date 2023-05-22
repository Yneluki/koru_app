// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'join_group_form_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$JoinGroupFormState {
  Either<InputDataFailure, GroupToken> get token =>
      throw _privateConstructorUsedError;
  Either<InputDataFailure, MemberColor> get color =>
      throw _privateConstructorUsedError;
  Option<Either<JoinGroupFailure, Unit>> get joinGroupResult =>
      throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $JoinGroupFormStateCopyWith<JoinGroupFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JoinGroupFormStateCopyWith<$Res> {
  factory $JoinGroupFormStateCopyWith(
          JoinGroupFormState value, $Res Function(JoinGroupFormState) then) =
      _$JoinGroupFormStateCopyWithImpl<$Res, JoinGroupFormState>;
  @useResult
  $Res call(
      {Either<InputDataFailure, GroupToken> token,
      Either<InputDataFailure, MemberColor> color,
      Option<Either<JoinGroupFailure, Unit>> joinGroupResult,
      bool isSubmitting});
}

/// @nodoc
class _$JoinGroupFormStateCopyWithImpl<$Res, $Val extends JoinGroupFormState>
    implements $JoinGroupFormStateCopyWith<$Res> {
  _$JoinGroupFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? color = null,
    Object? joinGroupResult = null,
    Object? isSubmitting = null,
  }) {
    return _then(_value.copyWith(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as Either<InputDataFailure, GroupToken>,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Either<InputDataFailure, MemberColor>,
      joinGroupResult: null == joinGroupResult
          ? _value.joinGroupResult
          : joinGroupResult // ignore: cast_nullable_to_non_nullable
              as Option<Either<JoinGroupFailure, Unit>>,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_JoinGroupFormStateCopyWith<$Res>
    implements $JoinGroupFormStateCopyWith<$Res> {
  factory _$$_JoinGroupFormStateCopyWith(_$_JoinGroupFormState value,
          $Res Function(_$_JoinGroupFormState) then) =
      __$$_JoinGroupFormStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Either<InputDataFailure, GroupToken> token,
      Either<InputDataFailure, MemberColor> color,
      Option<Either<JoinGroupFailure, Unit>> joinGroupResult,
      bool isSubmitting});
}

/// @nodoc
class __$$_JoinGroupFormStateCopyWithImpl<$Res>
    extends _$JoinGroupFormStateCopyWithImpl<$Res, _$_JoinGroupFormState>
    implements _$$_JoinGroupFormStateCopyWith<$Res> {
  __$$_JoinGroupFormStateCopyWithImpl(
      _$_JoinGroupFormState _value, $Res Function(_$_JoinGroupFormState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? color = null,
    Object? joinGroupResult = null,
    Object? isSubmitting = null,
  }) {
    return _then(_$_JoinGroupFormState(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as Either<InputDataFailure, GroupToken>,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Either<InputDataFailure, MemberColor>,
      joinGroupResult: null == joinGroupResult
          ? _value.joinGroupResult
          : joinGroupResult // ignore: cast_nullable_to_non_nullable
              as Option<Either<JoinGroupFailure, Unit>>,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_JoinGroupFormState implements _JoinGroupFormState {
  const _$_JoinGroupFormState(
      {required this.token,
      required this.color,
      required this.joinGroupResult,
      required this.isSubmitting});

  @override
  final Either<InputDataFailure, GroupToken> token;
  @override
  final Either<InputDataFailure, MemberColor> color;
  @override
  final Option<Either<JoinGroupFailure, Unit>> joinGroupResult;
  @override
  final bool isSubmitting;

  @override
  String toString() {
    return 'JoinGroupFormState(token: $token, color: $color, joinGroupResult: $joinGroupResult, isSubmitting: $isSubmitting)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_JoinGroupFormState &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.joinGroupResult, joinGroupResult) ||
                other.joinGroupResult == joinGroupResult) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, token, color, joinGroupResult, isSubmitting);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_JoinGroupFormStateCopyWith<_$_JoinGroupFormState> get copyWith =>
      __$$_JoinGroupFormStateCopyWithImpl<_$_JoinGroupFormState>(
          this, _$identity);
}

abstract class _JoinGroupFormState implements JoinGroupFormState {
  const factory _JoinGroupFormState(
      {required final Either<InputDataFailure, GroupToken> token,
      required final Either<InputDataFailure, MemberColor> color,
      required final Option<Either<JoinGroupFailure, Unit>> joinGroupResult,
      required final bool isSubmitting}) = _$_JoinGroupFormState;

  @override
  Either<InputDataFailure, GroupToken> get token;
  @override
  Either<InputDataFailure, MemberColor> get color;
  @override
  Option<Either<JoinGroupFailure, Unit>> get joinGroupResult;
  @override
  bool get isSubmitting;
  @override
  @JsonKey(ignore: true)
  _$$_JoinGroupFormStateCopyWith<_$_JoinGroupFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_group_form_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CreateGroupFormState {
  Either<InputDataFailure, GroupName> get groupName =>
      throw _privateConstructorUsedError;
  Either<InputDataFailure, MemberColor> get color =>
      throw _privateConstructorUsedError;
  Option<Either<CreateGroupFailure, UuidValue>> get createGroupResult =>
      throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateGroupFormStateCopyWith<CreateGroupFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateGroupFormStateCopyWith<$Res> {
  factory $CreateGroupFormStateCopyWith(CreateGroupFormState value,
          $Res Function(CreateGroupFormState) then) =
      _$CreateGroupFormStateCopyWithImpl<$Res, CreateGroupFormState>;
  @useResult
  $Res call(
      {Either<InputDataFailure, GroupName> groupName,
      Either<InputDataFailure, MemberColor> color,
      Option<Either<CreateGroupFailure, UuidValue>> createGroupResult,
      bool isSubmitting});
}

/// @nodoc
class _$CreateGroupFormStateCopyWithImpl<$Res,
        $Val extends CreateGroupFormState>
    implements $CreateGroupFormStateCopyWith<$Res> {
  _$CreateGroupFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupName = null,
    Object? color = null,
    Object? createGroupResult = null,
    Object? isSubmitting = null,
  }) {
    return _then(_value.copyWith(
      groupName: null == groupName
          ? _value.groupName
          : groupName // ignore: cast_nullable_to_non_nullable
              as Either<InputDataFailure, GroupName>,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Either<InputDataFailure, MemberColor>,
      createGroupResult: null == createGroupResult
          ? _value.createGroupResult
          : createGroupResult // ignore: cast_nullable_to_non_nullable
              as Option<Either<CreateGroupFailure, UuidValue>>,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CreateGroupFormStateCopyWith<$Res>
    implements $CreateGroupFormStateCopyWith<$Res> {
  factory _$$_CreateGroupFormStateCopyWith(_$_CreateGroupFormState value,
          $Res Function(_$_CreateGroupFormState) then) =
      __$$_CreateGroupFormStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Either<InputDataFailure, GroupName> groupName,
      Either<InputDataFailure, MemberColor> color,
      Option<Either<CreateGroupFailure, UuidValue>> createGroupResult,
      bool isSubmitting});
}

/// @nodoc
class __$$_CreateGroupFormStateCopyWithImpl<$Res>
    extends _$CreateGroupFormStateCopyWithImpl<$Res, _$_CreateGroupFormState>
    implements _$$_CreateGroupFormStateCopyWith<$Res> {
  __$$_CreateGroupFormStateCopyWithImpl(_$_CreateGroupFormState _value,
      $Res Function(_$_CreateGroupFormState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupName = null,
    Object? color = null,
    Object? createGroupResult = null,
    Object? isSubmitting = null,
  }) {
    return _then(_$_CreateGroupFormState(
      groupName: null == groupName
          ? _value.groupName
          : groupName // ignore: cast_nullable_to_non_nullable
              as Either<InputDataFailure, GroupName>,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Either<InputDataFailure, MemberColor>,
      createGroupResult: null == createGroupResult
          ? _value.createGroupResult
          : createGroupResult // ignore: cast_nullable_to_non_nullable
              as Option<Either<CreateGroupFailure, UuidValue>>,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_CreateGroupFormState implements _CreateGroupFormState {
  const _$_CreateGroupFormState(
      {required this.groupName,
      required this.color,
      required this.createGroupResult,
      required this.isSubmitting});

  @override
  final Either<InputDataFailure, GroupName> groupName;
  @override
  final Either<InputDataFailure, MemberColor> color;
  @override
  final Option<Either<CreateGroupFailure, UuidValue>> createGroupResult;
  @override
  final bool isSubmitting;

  @override
  String toString() {
    return 'CreateGroupFormState(groupName: $groupName, color: $color, createGroupResult: $createGroupResult, isSubmitting: $isSubmitting)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateGroupFormState &&
            (identical(other.groupName, groupName) ||
                other.groupName == groupName) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.createGroupResult, createGroupResult) ||
                other.createGroupResult == createGroupResult) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, groupName, color, createGroupResult, isSubmitting);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateGroupFormStateCopyWith<_$_CreateGroupFormState> get copyWith =>
      __$$_CreateGroupFormStateCopyWithImpl<_$_CreateGroupFormState>(
          this, _$identity);
}

abstract class _CreateGroupFormState implements CreateGroupFormState {
  const factory _CreateGroupFormState(
      {required final Either<InputDataFailure, GroupName> groupName,
      required final Either<InputDataFailure, MemberColor> color,
      required final Option<Either<CreateGroupFailure, UuidValue>>
          createGroupResult,
      required final bool isSubmitting}) = _$_CreateGroupFormState;

  @override
  Either<InputDataFailure, GroupName> get groupName;
  @override
  Either<InputDataFailure, MemberColor> get color;
  @override
  Option<Either<CreateGroupFailure, UuidValue>> get createGroupResult;
  @override
  bool get isSubmitting;
  @override
  @JsonKey(ignore: true)
  _$$_CreateGroupFormStateCopyWith<_$_CreateGroupFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'groups_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GroupsPageState {
  Option<Either<DeleteGroupFailure, Unit>> get deleteGroupResult =>
      throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GroupsPageStateCopyWith<GroupsPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupsPageStateCopyWith<$Res> {
  factory $GroupsPageStateCopyWith(
          GroupsPageState value, $Res Function(GroupsPageState) then) =
      _$GroupsPageStateCopyWithImpl<$Res, GroupsPageState>;
  @useResult
  $Res call(
      {Option<Either<DeleteGroupFailure, Unit>> deleteGroupResult,
      bool isSubmitting});
}

/// @nodoc
class _$GroupsPageStateCopyWithImpl<$Res, $Val extends GroupsPageState>
    implements $GroupsPageStateCopyWith<$Res> {
  _$GroupsPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deleteGroupResult = null,
    Object? isSubmitting = null,
  }) {
    return _then(_value.copyWith(
      deleteGroupResult: null == deleteGroupResult
          ? _value.deleteGroupResult
          : deleteGroupResult // ignore: cast_nullable_to_non_nullable
              as Option<Either<DeleteGroupFailure, Unit>>,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GroupsPageStateCopyWith<$Res>
    implements $GroupsPageStateCopyWith<$Res> {
  factory _$$_GroupsPageStateCopyWith(
          _$_GroupsPageState value, $Res Function(_$_GroupsPageState) then) =
      __$$_GroupsPageStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Option<Either<DeleteGroupFailure, Unit>> deleteGroupResult,
      bool isSubmitting});
}

/// @nodoc
class __$$_GroupsPageStateCopyWithImpl<$Res>
    extends _$GroupsPageStateCopyWithImpl<$Res, _$_GroupsPageState>
    implements _$$_GroupsPageStateCopyWith<$Res> {
  __$$_GroupsPageStateCopyWithImpl(
      _$_GroupsPageState _value, $Res Function(_$_GroupsPageState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deleteGroupResult = null,
    Object? isSubmitting = null,
  }) {
    return _then(_$_GroupsPageState(
      deleteGroupResult: null == deleteGroupResult
          ? _value.deleteGroupResult
          : deleteGroupResult // ignore: cast_nullable_to_non_nullable
              as Option<Either<DeleteGroupFailure, Unit>>,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_GroupsPageState implements _GroupsPageState {
  const _$_GroupsPageState(
      {required this.deleteGroupResult, required this.isSubmitting});

  @override
  final Option<Either<DeleteGroupFailure, Unit>> deleteGroupResult;
  @override
  final bool isSubmitting;

  @override
  String toString() {
    return 'GroupsPageState(deleteGroupResult: $deleteGroupResult, isSubmitting: $isSubmitting)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GroupsPageState &&
            (identical(other.deleteGroupResult, deleteGroupResult) ||
                other.deleteGroupResult == deleteGroupResult) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting));
  }

  @override
  int get hashCode => Object.hash(runtimeType, deleteGroupResult, isSubmitting);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GroupsPageStateCopyWith<_$_GroupsPageState> get copyWith =>
      __$$_GroupsPageStateCopyWithImpl<_$_GroupsPageState>(this, _$identity);
}

abstract class _GroupsPageState implements GroupsPageState {
  const factory _GroupsPageState(
      {required final Option<Either<DeleteGroupFailure, Unit>>
          deleteGroupResult,
      required final bool isSubmitting}) = _$_GroupsPageState;

  @override
  Option<Either<DeleteGroupFailure, Unit>> get deleteGroupResult;
  @override
  bool get isSubmitting;
  @override
  @JsonKey(ignore: true)
  _$$_GroupsPageStateCopyWith<_$_GroupsPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

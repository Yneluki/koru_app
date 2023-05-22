// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'koru_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$KoruState {
  Option<AuthUser> get user => throw _privateConstructorUsedError;
  Option<UuidValue> get groupId => throw _privateConstructorUsedError;
  LoadableValue<List<Group>, FetchGroupsFailure> get groups =>
      throw _privateConstructorUsedError;
  LoadableValue<DetailedGroup, FetchGroupFailure> get group =>
      throw _privateConstructorUsedError;
  LoadableValue<List<Settlement>, FetchSettlementsFailure> get settlements =>
      throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get sessionTimeout => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $KoruStateCopyWith<KoruState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KoruStateCopyWith<$Res> {
  factory $KoruStateCopyWith(KoruState value, $Res Function(KoruState) then) =
      _$KoruStateCopyWithImpl<$Res, KoruState>;
  @useResult
  $Res call(
      {Option<AuthUser> user,
      Option<UuidValue> groupId,
      LoadableValue<List<Group>, FetchGroupsFailure> groups,
      LoadableValue<DetailedGroup, FetchGroupFailure> group,
      LoadableValue<List<Settlement>, FetchSettlementsFailure> settlements,
      bool isLoading,
      bool sessionTimeout});

  $LoadableValueCopyWith<List<Group>, FetchGroupsFailure, $Res> get groups;
  $LoadableValueCopyWith<DetailedGroup, FetchGroupFailure, $Res> get group;
  $LoadableValueCopyWith<List<Settlement>, FetchSettlementsFailure, $Res>
      get settlements;
}

/// @nodoc
class _$KoruStateCopyWithImpl<$Res, $Val extends KoruState>
    implements $KoruStateCopyWith<$Res> {
  _$KoruStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? groupId = null,
    Object? groups = null,
    Object? group = null,
    Object? settlements = null,
    Object? isLoading = null,
    Object? sessionTimeout = null,
  }) {
    return _then(_value.copyWith(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as Option<AuthUser>,
      groupId: null == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as Option<UuidValue>,
      groups: null == groups
          ? _value.groups
          : groups // ignore: cast_nullable_to_non_nullable
              as LoadableValue<List<Group>, FetchGroupsFailure>,
      group: null == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as LoadableValue<DetailedGroup, FetchGroupFailure>,
      settlements: null == settlements
          ? _value.settlements
          : settlements // ignore: cast_nullable_to_non_nullable
              as LoadableValue<List<Settlement>, FetchSettlementsFailure>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      sessionTimeout: null == sessionTimeout
          ? _value.sessionTimeout
          : sessionTimeout // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LoadableValueCopyWith<List<Group>, FetchGroupsFailure, $Res> get groups {
    return $LoadableValueCopyWith<List<Group>, FetchGroupsFailure, $Res>(
        _value.groups, (value) {
      return _then(_value.copyWith(groups: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LoadableValueCopyWith<DetailedGroup, FetchGroupFailure, $Res> get group {
    return $LoadableValueCopyWith<DetailedGroup, FetchGroupFailure, $Res>(
        _value.group, (value) {
      return _then(_value.copyWith(group: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LoadableValueCopyWith<List<Settlement>, FetchSettlementsFailure, $Res>
      get settlements {
    return $LoadableValueCopyWith<List<Settlement>, FetchSettlementsFailure,
        $Res>(_value.settlements, (value) {
      return _then(_value.copyWith(settlements: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_KoruStateCopyWith<$Res> implements $KoruStateCopyWith<$Res> {
  factory _$$_KoruStateCopyWith(
          _$_KoruState value, $Res Function(_$_KoruState) then) =
      __$$_KoruStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Option<AuthUser> user,
      Option<UuidValue> groupId,
      LoadableValue<List<Group>, FetchGroupsFailure> groups,
      LoadableValue<DetailedGroup, FetchGroupFailure> group,
      LoadableValue<List<Settlement>, FetchSettlementsFailure> settlements,
      bool isLoading,
      bool sessionTimeout});

  @override
  $LoadableValueCopyWith<List<Group>, FetchGroupsFailure, $Res> get groups;
  @override
  $LoadableValueCopyWith<DetailedGroup, FetchGroupFailure, $Res> get group;
  @override
  $LoadableValueCopyWith<List<Settlement>, FetchSettlementsFailure, $Res>
      get settlements;
}

/// @nodoc
class __$$_KoruStateCopyWithImpl<$Res>
    extends _$KoruStateCopyWithImpl<$Res, _$_KoruState>
    implements _$$_KoruStateCopyWith<$Res> {
  __$$_KoruStateCopyWithImpl(
      _$_KoruState _value, $Res Function(_$_KoruState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? groupId = null,
    Object? groups = null,
    Object? group = null,
    Object? settlements = null,
    Object? isLoading = null,
    Object? sessionTimeout = null,
  }) {
    return _then(_$_KoruState(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as Option<AuthUser>,
      groupId: null == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as Option<UuidValue>,
      groups: null == groups
          ? _value.groups
          : groups // ignore: cast_nullable_to_non_nullable
              as LoadableValue<List<Group>, FetchGroupsFailure>,
      group: null == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as LoadableValue<DetailedGroup, FetchGroupFailure>,
      settlements: null == settlements
          ? _value.settlements
          : settlements // ignore: cast_nullable_to_non_nullable
              as LoadableValue<List<Settlement>, FetchSettlementsFailure>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      sessionTimeout: null == sessionTimeout
          ? _value.sessionTimeout
          : sessionTimeout // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_KoruState implements _KoruState {
  const _$_KoruState(
      {required this.user,
      required this.groupId,
      required this.groups,
      required this.group,
      required this.settlements,
      required this.isLoading,
      required this.sessionTimeout});

  @override
  final Option<AuthUser> user;
  @override
  final Option<UuidValue> groupId;
  @override
  final LoadableValue<List<Group>, FetchGroupsFailure> groups;
  @override
  final LoadableValue<DetailedGroup, FetchGroupFailure> group;
  @override
  final LoadableValue<List<Settlement>, FetchSettlementsFailure> settlements;
  @override
  final bool isLoading;
  @override
  final bool sessionTimeout;

  @override
  String toString() {
    return 'KoruState(user: $user, groupId: $groupId, groups: $groups, group: $group, settlements: $settlements, isLoading: $isLoading, sessionTimeout: $sessionTimeout)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_KoruState &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.groupId, groupId) || other.groupId == groupId) &&
            (identical(other.groups, groups) || other.groups == groups) &&
            (identical(other.group, group) || other.group == group) &&
            (identical(other.settlements, settlements) ||
                other.settlements == settlements) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.sessionTimeout, sessionTimeout) ||
                other.sessionTimeout == sessionTimeout));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, groupId, groups, group,
      settlements, isLoading, sessionTimeout);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_KoruStateCopyWith<_$_KoruState> get copyWith =>
      __$$_KoruStateCopyWithImpl<_$_KoruState>(this, _$identity);
}

abstract class _KoruState implements KoruState {
  const factory _KoruState(
      {required final Option<AuthUser> user,
      required final Option<UuidValue> groupId,
      required final LoadableValue<List<Group>, FetchGroupsFailure> groups,
      required final LoadableValue<DetailedGroup, FetchGroupFailure> group,
      required final LoadableValue<List<Settlement>, FetchSettlementsFailure>
          settlements,
      required final bool isLoading,
      required final bool sessionTimeout}) = _$_KoruState;

  @override
  Option<AuthUser> get user;
  @override
  Option<UuidValue> get groupId;
  @override
  LoadableValue<List<Group>, FetchGroupsFailure> get groups;
  @override
  LoadableValue<DetailedGroup, FetchGroupFailure> get group;
  @override
  LoadableValue<List<Settlement>, FetchSettlementsFailure> get settlements;
  @override
  bool get isLoading;
  @override
  bool get sessionTimeout;
  @override
  @JsonKey(ignore: true)
  _$$_KoruStateCopyWith<_$_KoruState> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'group.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Group {
  UuidValue get id => throw _privateConstructorUsedError;
  GroupName get name => throw _privateConstructorUsedError;
  GroupMember get admin => throw _privateConstructorUsedError;
  List<GroupMember> get members => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GroupCopyWith<Group> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupCopyWith<$Res> {
  factory $GroupCopyWith(Group value, $Res Function(Group) then) =
      _$GroupCopyWithImpl<$Res, Group>;
  @useResult
  $Res call(
      {UuidValue id,
      GroupName name,
      GroupMember admin,
      List<GroupMember> members});
}

/// @nodoc
class _$GroupCopyWithImpl<$Res, $Val extends Group>
    implements $GroupCopyWith<$Res> {
  _$GroupCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? admin = null,
    Object? members = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UuidValue,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as GroupName,
      admin: null == admin
          ? _value.admin
          : admin // ignore: cast_nullable_to_non_nullable
              as GroupMember,
      members: null == members
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as List<GroupMember>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GroupCopyWith<$Res> implements $GroupCopyWith<$Res> {
  factory _$$_GroupCopyWith(_$_Group value, $Res Function(_$_Group) then) =
      __$$_GroupCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UuidValue id,
      GroupName name,
      GroupMember admin,
      List<GroupMember> members});
}

/// @nodoc
class __$$_GroupCopyWithImpl<$Res> extends _$GroupCopyWithImpl<$Res, _$_Group>
    implements _$$_GroupCopyWith<$Res> {
  __$$_GroupCopyWithImpl(_$_Group _value, $Res Function(_$_Group) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? admin = null,
    Object? members = null,
  }) {
    return _then(_$_Group(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UuidValue,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as GroupName,
      admin: null == admin
          ? _value.admin
          : admin // ignore: cast_nullable_to_non_nullable
              as GroupMember,
      members: null == members
          ? _value._members
          : members // ignore: cast_nullable_to_non_nullable
              as List<GroupMember>,
    ));
  }
}

/// @nodoc

class _$_Group implements _Group {
  const _$_Group(
      {required this.id,
      required this.name,
      required this.admin,
      required final List<GroupMember> members})
      : _members = members;

  @override
  final UuidValue id;
  @override
  final GroupName name;
  @override
  final GroupMember admin;
  final List<GroupMember> _members;
  @override
  List<GroupMember> get members {
    if (_members is EqualUnmodifiableListView) return _members;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_members);
  }

  @override
  String toString() {
    return 'Group(id: $id, name: $name, admin: $admin, members: $members)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Group &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.admin, admin) || other.admin == admin) &&
            const DeepCollectionEquality().equals(other._members, _members));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, admin,
      const DeepCollectionEquality().hash(_members));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GroupCopyWith<_$_Group> get copyWith =>
      __$$_GroupCopyWithImpl<_$_Group>(this, _$identity);
}

abstract class _Group implements Group {
  const factory _Group(
      {required final UuidValue id,
      required final GroupName name,
      required final GroupMember admin,
      required final List<GroupMember> members}) = _$_Group;

  @override
  UuidValue get id;
  @override
  GroupName get name;
  @override
  GroupMember get admin;
  @override
  List<GroupMember> get members;
  @override
  @JsonKey(ignore: true)
  _$$_GroupCopyWith<_$_Group> get copyWith =>
      throw _privateConstructorUsedError;
}

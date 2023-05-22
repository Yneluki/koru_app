// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_expenses.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserExpenses {
  GroupMember get user => throw _privateConstructorUsedError;
  double get total => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserExpensesCopyWith<UserExpenses> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserExpensesCopyWith<$Res> {
  factory $UserExpensesCopyWith(
          UserExpenses value, $Res Function(UserExpenses) then) =
      _$UserExpensesCopyWithImpl<$Res, UserExpenses>;
  @useResult
  $Res call({GroupMember user, double total});
}

/// @nodoc
class _$UserExpensesCopyWithImpl<$Res, $Val extends UserExpenses>
    implements $UserExpensesCopyWith<$Res> {
  _$UserExpensesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? total = null,
  }) {
    return _then(_value.copyWith(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as GroupMember,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserExpensesCopyWith<$Res>
    implements $UserExpensesCopyWith<$Res> {
  factory _$$_UserExpensesCopyWith(
          _$_UserExpenses value, $Res Function(_$_UserExpenses) then) =
      __$$_UserExpensesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({GroupMember user, double total});
}

/// @nodoc
class __$$_UserExpensesCopyWithImpl<$Res>
    extends _$UserExpensesCopyWithImpl<$Res, _$_UserExpenses>
    implements _$$_UserExpensesCopyWith<$Res> {
  __$$_UserExpensesCopyWithImpl(
      _$_UserExpenses _value, $Res Function(_$_UserExpenses) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? total = null,
  }) {
    return _then(_$_UserExpenses(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as GroupMember,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_UserExpenses implements _UserExpenses {
  const _$_UserExpenses({required this.user, required this.total});

  @override
  final GroupMember user;
  @override
  final double total;

  @override
  String toString() {
    return 'UserExpenses(user: $user, total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserExpenses &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.total, total) || other.total == total));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, total);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserExpensesCopyWith<_$_UserExpenses> get copyWith =>
      __$$_UserExpensesCopyWithImpl<_$_UserExpenses>(this, _$identity);
}

abstract class _UserExpenses implements UserExpenses {
  const factory _UserExpenses(
      {required final GroupMember user,
      required final double total}) = _$_UserExpenses;

  @override
  GroupMember get user;
  @override
  double get total;
  @override
  @JsonKey(ignore: true)
  _$$_UserExpensesCopyWith<_$_UserExpenses> get copyWith =>
      throw _privateConstructorUsedError;
}

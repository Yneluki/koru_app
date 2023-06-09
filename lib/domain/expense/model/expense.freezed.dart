// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'expense.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Expense {
  UuidValue get id => throw _privateConstructorUsedError;
  ExpenseDescription get description => throw _privateConstructorUsedError;
  ExpenseAmount get amount => throw _privateConstructorUsedError;
  GroupMember get user => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExpenseCopyWith<Expense> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpenseCopyWith<$Res> {
  factory $ExpenseCopyWith(Expense value, $Res Function(Expense) then) =
      _$ExpenseCopyWithImpl<$Res, Expense>;
  @useResult
  $Res call(
      {UuidValue id,
      ExpenseDescription description,
      ExpenseAmount amount,
      GroupMember user,
      DateTime date});
}

/// @nodoc
class _$ExpenseCopyWithImpl<$Res, $Val extends Expense>
    implements $ExpenseCopyWith<$Res> {
  _$ExpenseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? description = null,
    Object? amount = null,
    Object? user = null,
    Object? date = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UuidValue,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as ExpenseDescription,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as ExpenseAmount,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as GroupMember,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ExpenseCopyWith<$Res> implements $ExpenseCopyWith<$Res> {
  factory _$$_ExpenseCopyWith(
          _$_Expense value, $Res Function(_$_Expense) then) =
      __$$_ExpenseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UuidValue id,
      ExpenseDescription description,
      ExpenseAmount amount,
      GroupMember user,
      DateTime date});
}

/// @nodoc
class __$$_ExpenseCopyWithImpl<$Res>
    extends _$ExpenseCopyWithImpl<$Res, _$_Expense>
    implements _$$_ExpenseCopyWith<$Res> {
  __$$_ExpenseCopyWithImpl(_$_Expense _value, $Res Function(_$_Expense) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? description = null,
    Object? amount = null,
    Object? user = null,
    Object? date = null,
  }) {
    return _then(_$_Expense(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UuidValue,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as ExpenseDescription,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as ExpenseAmount,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as GroupMember,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_Expense implements _Expense {
  const _$_Expense(
      {required this.id,
      required this.description,
      required this.amount,
      required this.user,
      required this.date});

  @override
  final UuidValue id;
  @override
  final ExpenseDescription description;
  @override
  final ExpenseAmount amount;
  @override
  final GroupMember user;
  @override
  final DateTime date;

  @override
  String toString() {
    return 'Expense(id: $id, description: $description, amount: $amount, user: $user, date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Expense &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, description, amount, user, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ExpenseCopyWith<_$_Expense> get copyWith =>
      __$$_ExpenseCopyWithImpl<_$_Expense>(this, _$identity);
}

abstract class _Expense implements Expense {
  const factory _Expense(
      {required final UuidValue id,
      required final ExpenseDescription description,
      required final ExpenseAmount amount,
      required final GroupMember user,
      required final DateTime date}) = _$_Expense;

  @override
  UuidValue get id;
  @override
  ExpenseDescription get description;
  @override
  ExpenseAmount get amount;
  @override
  GroupMember get user;
  @override
  DateTime get date;
  @override
  @JsonKey(ignore: true)
  _$$_ExpenseCopyWith<_$_Expense> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settlement.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Settlement {
  UuidValue get id => throw _privateConstructorUsedError;
  Option<DateTime> get startDate => throw _privateConstructorUsedError;
  DateTime get endDate => throw _privateConstructorUsedError;
  List<Transaction> get transactions => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SettlementCopyWith<Settlement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettlementCopyWith<$Res> {
  factory $SettlementCopyWith(
          Settlement value, $Res Function(Settlement) then) =
      _$SettlementCopyWithImpl<$Res, Settlement>;
  @useResult
  $Res call(
      {UuidValue id,
      Option<DateTime> startDate,
      DateTime endDate,
      List<Transaction> transactions});
}

/// @nodoc
class _$SettlementCopyWithImpl<$Res, $Val extends Settlement>
    implements $SettlementCopyWith<$Res> {
  _$SettlementCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? transactions = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UuidValue,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as Option<DateTime>,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      transactions: null == transactions
          ? _value.transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<Transaction>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SettlementCopyWith<$Res>
    implements $SettlementCopyWith<$Res> {
  factory _$$_SettlementCopyWith(
          _$_Settlement value, $Res Function(_$_Settlement) then) =
      __$$_SettlementCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UuidValue id,
      Option<DateTime> startDate,
      DateTime endDate,
      List<Transaction> transactions});
}

/// @nodoc
class __$$_SettlementCopyWithImpl<$Res>
    extends _$SettlementCopyWithImpl<$Res, _$_Settlement>
    implements _$$_SettlementCopyWith<$Res> {
  __$$_SettlementCopyWithImpl(
      _$_Settlement _value, $Res Function(_$_Settlement) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? transactions = null,
  }) {
    return _then(_$_Settlement(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UuidValue,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as Option<DateTime>,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      transactions: null == transactions
          ? _value._transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<Transaction>,
    ));
  }
}

/// @nodoc

class _$_Settlement implements _Settlement {
  const _$_Settlement(
      {required this.id,
      required this.startDate,
      required this.endDate,
      required final List<Transaction> transactions})
      : _transactions = transactions;

  @override
  final UuidValue id;
  @override
  final Option<DateTime> startDate;
  @override
  final DateTime endDate;
  final List<Transaction> _transactions;
  @override
  List<Transaction> get transactions {
    if (_transactions is EqualUnmodifiableListView) return _transactions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_transactions);
  }

  @override
  String toString() {
    return 'Settlement(id: $id, startDate: $startDate, endDate: $endDate, transactions: $transactions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Settlement &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            const DeepCollectionEquality()
                .equals(other._transactions, _transactions));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, startDate, endDate,
      const DeepCollectionEquality().hash(_transactions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SettlementCopyWith<_$_Settlement> get copyWith =>
      __$$_SettlementCopyWithImpl<_$_Settlement>(this, _$identity);
}

abstract class _Settlement implements Settlement {
  const factory _Settlement(
      {required final UuidValue id,
      required final Option<DateTime> startDate,
      required final DateTime endDate,
      required final List<Transaction> transactions}) = _$_Settlement;

  @override
  UuidValue get id;
  @override
  Option<DateTime> get startDate;
  @override
  DateTime get endDate;
  @override
  List<Transaction> get transactions;
  @override
  @JsonKey(ignore: true)
  _$$_SettlementCopyWith<_$_Settlement> get copyWith =>
      throw _privateConstructorUsedError;
}

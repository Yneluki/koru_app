import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:koru/domain/settlement/model/transaction.dart';
import 'package:uuid/uuid.dart';

part 'settlement.freezed.dart';

@freezed
class Settlement with _$Settlement {
  const factory Settlement({
    required UuidValue id,
    required Option<DateTime> startDate,
    required DateTime endDate,
    required List<Transaction> transactions,
  }) = _Settlement;
}

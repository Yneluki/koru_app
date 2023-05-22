import 'package:dartz/dartz.dart';
import 'package:koru/domain/common/failures.dart';

class ExpenseAmount {
  final double value;

  const ExpenseAmount._(this.value);

  static Either<InputDataFailure, ExpenseAmount> build(String input) {
    if (input.isEmpty) {
      return left(const InputDataFailure.emptyAmount());
    }
    try {
      final val = double.parse(input);
      return fromDouble(val);
    } catch (e) {
      return left(const InputDataFailure.invalidAmountFormat());
    }
  }

  static Either<InputDataFailure, ExpenseAmount> fromDouble(double val) {
    if (val <= 0) {
      return left(const InputDataFailure.invalidAmount());
    }
    return right(ExpenseAmount._(val));
  }

  static ExpenseAmount buildOrThrow(String input) {
    return build(input).fold(
      (l) => throw Error(),
      id,
    );
  }

  static ExpenseAmount fromDoubleOrThrow(double input) {
    return fromDouble(input).fold(
      (l) => throw Error(),
      id,
    );
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    return o is ExpenseAmount && o.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'ExpenseAmount($value)';
}

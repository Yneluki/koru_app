import 'package:dartz/dartz.dart';
import 'package:koru/domain/common/failures.dart';

class ExpenseDescription {
  final String value;

  const ExpenseDescription._(this.value);

  static Either<InputDataFailure, ExpenseDescription> build(String input) {
    if (input.isEmpty) {
      return left(const InputDataFailure.emptyExpenseDescription());
    }
    return right(ExpenseDescription._(input));
  }

  static ExpenseDescription buildOrThrow(String input) {
    return build(input).fold(
      (l) => throw Error(),
      id,
    );
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    return o is ExpenseDescription && o.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'ExpenseDescription($value)';
}

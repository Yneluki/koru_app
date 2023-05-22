import 'package:dartz/dartz.dart';
import 'package:koru/domain/common/failures.dart';

class Password {
  final String value;

  const Password._(this.value);

  static Either<InputDataFailure, Password> build(String input) {
    if (input.length < 8) {
      return left(const InputDataFailure.shortPassword());
    }
    return right(Password._(input));
  }

  static Password buildOrThrow(String input) {
    return build(input).fold(
      (l) => throw Error(),
      id,
    );
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    return o is Password && o.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Password($value)';
}

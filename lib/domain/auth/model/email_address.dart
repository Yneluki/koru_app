import 'package:dartz/dartz.dart';
import 'package:koru/domain/common/failures.dart';

class EmailAddress {
  final String value;

  const EmailAddress._(this.value);

  static Either<InputDataFailure, EmailAddress> build(String input) {
    if (input.isEmpty) {
      return left(const InputDataFailure.emptyEmail());
    }
    const emailRegex =
        r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
    if (RegExp(emailRegex).hasMatch(input)) {
      return right(EmailAddress._(input));
    } else {
      return left(InputDataFailure.invalidEmail(invalidEmail: input));
    }
  }

  static EmailAddress buildOrThrow(String input) {
    return build(input).fold(
      (l) => throw Error(),
      id,
    );
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    return o is EmailAddress && o.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'EmailAddress($value)';
}

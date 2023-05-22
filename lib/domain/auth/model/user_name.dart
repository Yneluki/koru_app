import 'package:dartz/dartz.dart';
import 'package:koru/domain/common/failures.dart';

class UserName {
  final String value;

  const UserName._(this.value);

  static Either<InputDataFailure, UserName> build(String input) {
    if (input.length > 50) {
      return left(const InputDataFailure.longName());
    }
    if (input.length < 3) {
      return left(const InputDataFailure.shortName());
    }
    return right(UserName._(input));
  }

  static UserName buildOrThrow(String input) {
    return build(input).fold(
      (l) => throw Error(),
      id,
    );
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    return o is UserName && o.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'UserName($value)';
}

import 'package:dartz/dartz.dart';
import 'package:koru/domain/common/failures.dart';
import 'package:koru/utils/jwt.dart';

class GroupToken {
  final String value;

  const GroupToken._(this.value);

  static Either<InputDataFailure, GroupToken> build(String input) {
    // todo add verification of token content and expiry
    if (input.isEmpty) {
      return left(const InputDataFailure.emptyGroupToken());
    }
    return right(GroupToken._(input));
  }

  static GroupToken buildOrThrow(String input) {
    return build(input).fold(
      (l) => throw Error(),
      id,
    );
  }

  String groupId() {
    return parseJwt(value)['sub'];
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    return o is GroupToken && o.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'GroupToken($value)';
}

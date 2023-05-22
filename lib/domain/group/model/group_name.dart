import 'package:dartz/dartz.dart';
import 'package:koru/domain/common/failures.dart';

class GroupName {
  final String value;

  const GroupName._(this.value);

  static Either<InputDataFailure, GroupName> build(String input) {
    if (input.isEmpty) {
      return left(const InputDataFailure.emptyGroupName());
    }
    return right(GroupName._(input));
  }

  static GroupName buildOrThrow(String input) {
    return build(input).fold(
      (l) => throw Error(),
      id,
    );
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    return o is GroupName && o.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'GroupName($value)';
}

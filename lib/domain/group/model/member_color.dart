import 'package:dartz/dartz.dart';
import 'package:koru/domain/common/failures.dart';

class MemberColor {
  final int red;
  final int green;
  final int blue;

  const MemberColor._(this.red, this.green, this.blue);

  static Either<InputDataFailure, MemberColor> build(
      int red, int green, int blue) {
    if (red < 0 ||
        red > 255 ||
        green < 0 ||
        green > 255 ||
        blue < 0 ||
        blue > 255) {
      return left(const InputDataFailure.invalidColor());
    }
    return right(MemberColor._(red, green, blue));
  }

  static MemberColor buildOrThrow(int red, int green, int blue) {
    return build(red, green, blue).fold(
      (l) => throw Error(),
      id,
    );
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    return o is MemberColor &&
        o.red == red &&
        o.green == green &&
        o.blue == blue;
  }

  @override
  int get hashCode => red.hashCode ^ green.hashCode ^ blue.hashCode;

  @override
  String toString() => 'MemberColor($red,$green,$blue)';
}

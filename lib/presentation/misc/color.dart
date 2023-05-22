import 'package:flutter/material.dart';
import 'package:koru/domain/group/model/member_color.dart';

extension MemberColorX on MemberColor {
  Color toColor() {
    return Color.fromARGB(
      255,
      red,
      green,
      blue,
    );
  }
}

class MemberColorSquare extends StatelessWidget {
  final MemberColor color;
  const MemberColorSquare({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return SizedBox.square(
      dimension: 20,
      child: Material(
        color: color.toColor(),
      ),
    );
  }
}

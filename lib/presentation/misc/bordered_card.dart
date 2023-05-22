import 'package:flutter/material.dart';

class BorderedCard extends StatelessWidget {
  final Color? color;
  final Widget title;
  final Widget subtitle;
  final Widget trailing;

  const BorderedCard({
    super.key,
    required this.color,
    required this.title,
    required this.subtitle,
    required this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: const BeveledRectangleBorder(),
      elevation: 2,
      child: ListTile(
        dense: true,
        minLeadingWidth: 0,
        minVerticalPadding: 0,
        leading: Container(
          width: 10,
          color: color,
        ),
        title: title,
        subtitle: subtitle,
        trailing: trailing,
      ),
    );
  }
}

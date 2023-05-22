import 'package:flutter/material.dart';

class TitledCard extends StatelessWidget {
  final Widget title;
  final List<Widget> children;

  const TitledCard({
    super.key,
    required this.title,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Card(
        shape: const BeveledRectangleBorder(),
        child: Column(
          children: [
            Material(
              color: Colors.green[900],
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 8.0,
                  horizontal: 10.0,
                ),
                child: title,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 6.0,
                horizontal: 10.0,
              ),
              child: Column(
                children: children,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

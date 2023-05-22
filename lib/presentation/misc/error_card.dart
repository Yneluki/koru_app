import 'package:flutter/material.dart';

class ErrorCard extends StatelessWidget {
  final String errorMessage;
  const ErrorCard({super.key, required this.errorMessage});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        color: Colors.red,
        borderRadius: BorderRadius.circular(12),
        child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(errorMessage)),
      ),
    );
  }

}
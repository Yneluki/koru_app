import 'package:flutter/material.dart';

ScaffoldFeatureController<SnackBar, SnackBarClosedReason> showErrorSnackBar(
    BuildContext context, String message) {
  return ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: Colors.black,
      content: ListTile(
        leading: const Icon(
          Icons.warning,
          color: Colors.red,
          size: 32,
        ),
        title: Text(message),
      ),
    ),
  );
}

ScaffoldFeatureController<SnackBar, SnackBarClosedReason> showSuccessSnackBar(
    BuildContext context, String message) {
  return ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: Colors.black,
      content: ListTile(
        leading: const Icon(
          Icons.check_circle,
          color: Colors.green,
          size: 32,
        ),
        title: Text(message),
      ),
    ),
  );
}

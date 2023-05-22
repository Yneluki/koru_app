import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:koru/presentation/misc/snackbar.dart';

listenForResult<F, R>(
    BuildContext context,
    WidgetRef ref,
    AlwaysAliveProviderListenable<Option<Either<F, R>>> result,
    Function(R) onSuccess,
    String Function(F) failureString) {
  ref.listen(result, (_, optResult) {
    optResult.fold(
      () => {},
      (result) => result.fold(
        (failure) => showErrorSnackBar(
          context,
          failureString(failure),
        ),
        onSuccess,
      ),
    );
  });
}

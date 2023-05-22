import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:koru/presentation/misc/loading.dart';

class LoadingOverlay extends ConsumerWidget {
  final AlwaysAliveProviderListenable<bool> loadingState;

  const LoadingOverlay({
    Key? key,
    required this.loadingState,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final submitting = ref.watch(loadingState);
    return IgnorePointer(
      ignoring: !submitting,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        color: submitting ? Colors.black.withOpacity(0.6) : Colors.transparent,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Visibility(
          visible: submitting,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              Loading(),
              SizedBox(height: 8),
              Text('Sending ...')
            ],
          ),
        ),
      ),
    );
  }
}

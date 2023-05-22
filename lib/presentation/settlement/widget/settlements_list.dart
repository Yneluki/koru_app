import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:koru/application/providers.dart';
import 'package:koru/domain/settlement/usecase/fetch_settlements.dart';
import 'package:koru/presentation/misc/error_card.dart';
import 'package:koru/presentation/misc/loading.dart';
import 'package:koru/presentation/settlement/widget/settlement_card.dart';

class SettlementsList extends ConsumerWidget {
  const SettlementsList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loadableStls = ref.watch(
      koruState.select((value) => value.settlements),
    );
    return loadableStls.when(
      data: (settlements) => ListView.builder(
          itemBuilder: (context, number) =>
              SettlementCard(settlement: settlements[number]),
          itemCount: settlements.length),
      error: (failure) => ErrorCard(errorMessage: failure.errorMessage()),
      loading: () => const Loading(),
    );
  }
}
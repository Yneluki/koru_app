import 'package:flutter/material.dart';
import 'package:koru/presentation/settlement/widget/settlements_list.dart';

class SettlementsPage extends StatelessWidget {
  const SettlementsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Settlements')),
      body: const SettlementsList(),
    );
  }
}

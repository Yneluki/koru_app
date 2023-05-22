import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:koru/domain/settlement/model/settlement.dart';
import 'package:koru/domain/settlement/model/transaction.dart';
import 'package:koru/presentation/misc/color.dart';
import 'package:koru/presentation/misc/titled_card.dart';

class SettlementCard extends StatelessWidget {
  final Settlement settlement;
  const SettlementCard({super.key, required this.settlement});

  @override
  Widget build(BuildContext context) {
    return TitledCard(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'SETTLEMENT',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'From: ${settlement.startDate.fold(() => '-', (d) => DateFormat.yMd().format(d))}',
                style: const TextStyle(fontStyle: FontStyle.italic),
              ),
              Text(
                'To: ${DateFormat.yMd().format(settlement.endDate)}',
                style: const TextStyle(fontStyle: FontStyle.italic),
              )
            ],
          ),
        ],
      ),
      children: settlement.transactions
          .map(
            (tr) => TransactionRow(
              transaction: tr,
            ),
          )
          .toList(),
    );
  }
}

class TransactionRow extends StatelessWidget {
  final Transaction transaction;

  const TransactionRow({
    super.key,
    required this.transaction,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      dense: true,
      minLeadingWidth: 0,
      visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          MemberColorSquare(color: transaction.from.color),
          Text(transaction.from.name.value),
          const Icon(Icons.arrow_forward),
          MemberColorSquare(color: transaction.to.color),
          Text(transaction.to.name.value),
        ],
      ),
      trailing: Text(
        transaction.amount.value.toStringAsFixed(2),
        style: const TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

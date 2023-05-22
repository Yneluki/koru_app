import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:koru/domain/group/model/detailed_group.dart';
import 'package:koru/domain/group/model/group_member.dart';
import 'package:koru/presentation/misc/color.dart';
import 'package:koru/presentation/misc/titled_card.dart';

class Summary extends StatelessWidget {
  final DetailedGroup groupDetails;

  const Summary({super.key, required this.groupDetails});

  @override
  Widget build(BuildContext context) {
    return TitledCard(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'SUMMARY',
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
                'Since: ${DateFormat.yMd().format(groupDetails.initDate)}',
              ),
              Text(
                'Total: ${groupDetails.total.toStringAsFixed(2)}',
                style: const TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
        ],
      ),
      children: groupDetails.userExpenses
          .map((e) => MemberRow(
                member: e.user,
                total: e.total,
              ))
          .toList(),
    );
  }
}

class MemberRow extends StatelessWidget {
  final GroupMember member;
  final double total;

  const MemberRow({
    super.key,
    required this.member,
    required this.total,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      dense: true,
      minLeadingWidth: 0,
      visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
      leading: MemberColorSquare(
        color: member.color,
      ),
      title: Text(member.name.value),
      trailing: Text(
        total.toStringAsFixed(2),
        style: const TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

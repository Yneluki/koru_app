import 'package:flutter/material.dart';
import 'package:koru/domain/group/model/detailed_group.dart';
import 'package:koru/presentation/groups/group/widget/expenses_list.dart';
import 'package:koru/presentation/groups/group/widget/summary.dart';

class GroupDetails extends StatelessWidget {
  final DetailedGroup groupDetails;

  const GroupDetails({super.key, required this.groupDetails});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Summary(groupDetails: groupDetails),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            Icon(
              Icons.monetization_on,
              color: Colors.lightGreen,
              size: 30,
            ),
            Text(
              'EXPENSES',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Icon(
              Icons.monetization_on,
              color: Colors.lightGreen,
              size: 30,
            ),
          ],
        ),
        const SizedBox(
          height: 8.0,
        ),
        Expanded(
          child: ExpensesList(expenses: groupDetails.expenses),
        ),
      ],
    );
  }
}

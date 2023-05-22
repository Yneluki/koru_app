import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:intl/intl.dart';
import 'package:koru/domain/expense/model/expense.dart';
import 'package:koru/domain/expense/usecase/delete_expense.dart';
import 'package:koru/presentation/expense/create_expense_page.dart';
import 'package:koru/presentation/groups/group/state/group_overview_page_state.dart';
import 'package:koru/presentation/misc/bordered_card.dart';
import 'package:koru/presentation/misc/color.dart';
import 'package:koru/presentation/misc/result_listener.dart';

class ExpensesList extends ConsumerWidget {
  final List<Expense> expenses;

  const ExpensesList({super.key, required this.expenses});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    listenForResult(
        context,
        ref,
        groupOverviewPageStateProvider
            .select((value) => value.deleteExpenseResult),
        (r) => null,
        (f) => f.errorMessage());
    if (expenses.isEmpty) {
      return const Center(child: Text('No expenses yet !'));
    }
    return ListView.builder(
      itemBuilder: (context, number) {
        final expense = expenses[number];
        return Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 2.0,
            horizontal: 6.0,
          ),
          child: ExpenseCard(expense: expense),
        );
      },
      itemCount: expenses.length,
    );
  }
}

class ExpenseCard extends ConsumerWidget {
  final Expense expense;

  const ExpenseCard({super.key, required this.expense});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Slidable(
      endActionPane: ActionPane(
        extentRatio: 0.45,
        motion: const ScrollMotion(),
        children: [
          SlidableAction(
            onPressed: (_) {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => CreateExpensePage(expense: expense)));
            },
            icon: Icons.edit,
            label: 'Edit',
            backgroundColor: Colors.orange,
          ),
          SlidableAction(
            onPressed: (_) {
              ref
                  .read(groupOverviewPageStateProvider.notifier)
                  .expenseDeleted(expense);
            },
            icon: Icons.delete,
            label: 'Delete',
            backgroundColor: Colors.red,
          )
        ],
      ),
      child: BorderedCard(
        color: expense.user.color.toColor(),
        title: Text(
          toBeginningOfSentenceCase(expense.description.value)!,
          style: const TextStyle(
            fontSize: 15,
          ),
        ),
        subtitle: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(expense.user.name.value,
                style: const TextStyle(
                  fontSize: 12,
                  fontStyle: FontStyle.italic,
                )),
            Text(
              DateFormat.yMd().format(expense.date),
              style: const TextStyle(
                fontSize: 12,
                fontStyle: FontStyle.italic,
              ),
            )
          ],
        ),
        trailing: SizedBox(
          width: 60,
          child: Text(
            expense.amount.value.toStringAsFixed(2),
            textAlign: TextAlign.right,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

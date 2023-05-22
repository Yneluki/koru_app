import 'package:koru/domain/expense/model/expense.dart';
import 'package:koru/domain/expense/model/expense_amount.dart';
import 'package:koru/domain/group/model/group.dart';
import 'package:koru/domain/group/model/user_expenses.dart';

class DetailedGroup {
  final Group group;
  final List<Expense> expenses;

  late List<UserExpenses> userExpenses;
  double total = 0.0;
  DateTime initDate = DateTime.now();

  DetailedGroup({
    required this.group,
    required this.expenses,
  }) {
    _compute();
  }

  void _compute() {
    for (var e in expenses) {
      if (e.date.isBefore(initDate)) {
        initDate = e.date;
      }
    }
    userExpenses = group.groupMembers().map((m) {
      final ue = expenses.where((e) => e.user == m).fold(
            0.0,
            (tot, exp) => tot + exp.amount.value,
          );
      total += ue;
      return UserExpenses(user: m, total: ue);
    }).toList();
  }
}

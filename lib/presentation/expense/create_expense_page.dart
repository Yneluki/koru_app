import 'package:flutter/material.dart';
import 'package:koru/domain/expense/model/expense.dart';
import 'package:koru/presentation/expense/create_expense_form.dart';
import 'package:koru/presentation/expense/state/create_expense_form_state.dart';
import 'package:koru/presentation/misc/loading_overlay.dart';

class CreateExpensePage extends StatelessWidget {
  final Expense? expense;
  const CreateExpensePage({super.key, this.expense});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: Text('${expense == null ? 'Create' : 'Edit'} Expense')),
      body: Stack(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: CreateExpenseForm(
                expense: expense,
              ),
            ),
          ),
          LoadingOverlay(
            loadingState: createExpenseFormStateProvider(expense).select(
              (value) => value.isSubmitting,
            ),
          ),
        ],
      ),
    );
  }
}

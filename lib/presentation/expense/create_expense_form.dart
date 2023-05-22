import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:koru/domain/expense/model/expense.dart';
import 'package:koru/domain/expense/usecase/create_expense.dart';
import 'package:koru/domain/expense/usecase/edit_expense.dart';
import 'package:koru/presentation/expense/state/create_expense_form_state.dart';
import 'package:koru/presentation/misc/result_listener.dart';

class CreateExpenseForm extends ConsumerStatefulWidget {
  final Expense? expense;
  const CreateExpenseForm({
    Key? key,
    this.expense,
  }) : super(key: key);

  @override
  CreateExpenseFormWidgetState createState() {
    return CreateExpenseFormWidgetState();
  }
}

class CreateExpenseFormWidgetState extends ConsumerState<CreateExpenseForm> {
  final TextEditingController _descController = TextEditingController();
  final TextEditingController _amountController = TextEditingController();

  @override
  void initState() {
    super.initState();
    state();
    if (widget.expense != null) {
      final exp = widget.expense!;
      _descController.text = exp.description.value;
      _amountController.text = exp.amount.value.toStringAsFixed(2);
    }
  }

  CreateExpenseFormState state() =>
      ref.read(createExpenseFormStateProvider(widget.expense));

  @override
  Widget build(BuildContext context) {
    listenForResult(
        context,
        ref,
        createExpenseFormStateProvider(widget.expense).select((value) => value.createExpenseResult),
            (r) => Navigator.of(context).pop(),
            (f) => f.errorMessage());
    listenForResult(
        context,
        ref,
        createExpenseFormStateProvider(widget.expense).select((value) => value.editExpenseResult),
            (r) => Navigator.of(context).pop(),
            (f) => f.errorMessage());
    final formKey = GlobalKey<FormState>();
    final notifier =
        ref.read(createExpenseFormStateProvider(widget.expense).notifier);
    return Form(
      key: formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.short_text),
              hintText: 'Enter the expense description',
              labelText: 'Expense description',
            ),
            controller: _descController,
            onChanged: (value) => notifier.expenseDescriptionChanged(value),
            validator: (_) => state().expenseDescription.fold(
                  (f) => f.maybeMap(
                    orElse: () => null,
                    emptyExpenseDescription: (_) =>
                        'Description cannot be empty',
                  ),
                  (r) => null,
                ),
          ),
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.monetization_on_outlined),
              hintText: 'Enter the expense amount',
              labelText: 'Expense amount',
            ),
            keyboardType: TextInputType.number,
            controller: _amountController,
            onChanged: (value) => notifier.expenseAmountChanged(value),
            validator: (_) => state().expenseAmount.fold(
                  (f) => f.maybeMap(
                    orElse: () => null,
                    emptyAmount: (_) => 'Amount cannot be empty',
                    invalidAmount: (_) => 'Amount should be more than 0',
                    invalidAmountFormat: (_) => 'Amount should be a number',
                  ),
                  (r) => null,
                ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          ElevatedButton(
            onPressed: () {
              final res = formKey.currentState!.validate();
              if (res) {
                notifier.saveExpenseRequested();
              }
            },
            child: const Text("Save"),
          )
        ],
      ),
    );
  }
}

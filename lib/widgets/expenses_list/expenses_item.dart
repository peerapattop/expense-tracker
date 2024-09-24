import 'package:flutter/material.dart';

import '../../models/expense.dart';

class ExpensesItem extends StatelessWidget {
  const ExpensesItem(this.expenses, {super.key});

  final Expense expenses;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 16,
        ),
        child: Column(
          children: [
            Text(expenses.title),
            const SizedBox(height: 4),
            Row(
              children: [
                Text('\$ ${expenses.amount.toStringAsFixed(2)}'),
                const Spacer(),
                Row(
                  children: [
                     Icon(categoriesIcons[expenses.category]),
                    const SizedBox(width: 8),
                    Text(expenses.formattedDate),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

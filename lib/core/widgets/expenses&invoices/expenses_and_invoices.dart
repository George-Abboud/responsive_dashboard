import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/widgets/expenses&invoices/all_expenses.dart';

class ExpensesAndInvoices extends StatelessWidget {
  const ExpensesAndInvoices({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Expanded(
          child: AllExpenses(),
        ),
      ],
    );
  }
}

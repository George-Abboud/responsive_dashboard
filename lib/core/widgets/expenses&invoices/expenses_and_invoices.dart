import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/widgets/expenses&invoices/all_expenses/all_expenses.dart';
import 'package:responsive_dashboard/core/widgets/expenses&invoices/invoices/quick_invoices.dart';

class ExpensesAndInvoices extends StatelessWidget {
  const ExpensesAndInvoices({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          AllExpenses(),
          SizedBox(
            height: 24,
          ),
          QuickInvoices(),
        ],
      ),
    );
  }
}

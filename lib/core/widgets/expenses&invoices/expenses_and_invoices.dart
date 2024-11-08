import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/widgets/expenses&invoices/all_expenses/all_expenses.dart';
import 'package:responsive_dashboard/core/widgets/expenses&invoices/invoices/quick_invoices.dart';

class ExpensesAndInvoices extends StatelessWidget {
  const ExpensesAndInvoices({super.key, required this.padding});
  final EdgeInsetsGeometry padding;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: padding,
        child: const Column(
          children: [
            AllExpenses(),
            SizedBox(
              height: 24,
            ),
            QuickInvoices(),
          ],
        ),
      ),
    );
  }
}

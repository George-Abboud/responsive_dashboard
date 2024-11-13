import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/widgets/expenses&invoices/expenses_and_invoices.dart';
import 'package:responsive_dashboard/core/widgets/my_card_statistics/my_card_statistics.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({
    super.key,
    required this.expensesPadding,
  });
  final EdgeInsetsGeometry expensesPadding;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ExpensesAndInvoices(
            padding: expensesPadding,
          ),
          const MyCardStatistics(
            padding: EdgeInsets.only(bottom: 32),
          ),
        ],
      ),
    );
  }
}

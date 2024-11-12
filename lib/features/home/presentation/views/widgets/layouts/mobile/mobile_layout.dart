import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/widgets/expenses&invoices/expenses_and_invoices.dart';
import 'package:responsive_dashboard/core/widgets/my_card_statistics/my_card_statistics.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({
    super.key,
    required this.padding,
    required this.expensesPadding,
  });
  final EdgeInsetsGeometry padding, expensesPadding;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: SingleChildScrollView(
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
      ),
    );
  }
}

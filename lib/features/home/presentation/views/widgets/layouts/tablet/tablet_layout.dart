import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/widgets/drawer/custom_drawer.dart';
import 'package:responsive_dashboard/core/widgets/expenses&invoices/expenses_and_invoices.dart';
import 'package:responsive_dashboard/core/widgets/my_card_statistics/my_card_statistics.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomDrawer(),
        ),
        SizedBox(
          width: 24,
        ),
        Expanded(
          flex: 3,
          child: SingleChildScrollView(
            child: Column(
              children: [
                ExpensesAndInvoices(
                  padding: EdgeInsets.only(bottom: 24, top: 40),
                ),
                MyCardStatistics(
                  padding: EdgeInsets.only(bottom: 32),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          width: 24,
        ),
      ],
    );
  }
}

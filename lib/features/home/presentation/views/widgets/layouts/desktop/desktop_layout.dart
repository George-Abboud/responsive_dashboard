import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/widgets/drawer/custom_drawer.dart';
import 'package:responsive_dashboard/core/widgets/expenses&invoices/expenses_and_invoices.dart';
import 'package:responsive_dashboard/core/widgets/my_card_statistics/my_card_statistics.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 2,
          child: CustomDrawer(),
        ),
        SizedBox(
          width: 32,
        ),
        Expanded(
          flex: 5,
          child: ExpensesAndInvoices(
            padding: EdgeInsets.only(top: 40, bottom: 32),
          ),
        ),
        SizedBox(
          width: 24,
        ),
        Expanded(
          flex: 3,
          child: MyCardStatistics(
            padding: EdgeInsets.only(right: 24, top: 40, bottom: 32),
          ),
        ),
      ],
    );
  }
}

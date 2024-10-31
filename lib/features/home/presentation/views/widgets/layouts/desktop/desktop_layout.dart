import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/widgets/drawer/custom_drawer.dart';
import 'package:responsive_dashboard/core/widgets/expenses&invoices/expenses_and_invoices.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Row(
        children: [
          Expanded(
            child: CustomDrawer(),
          ),
          Expanded(
            flex: 2,
            child: ExpensesAndInvoices(),
          ),
        ],
      ),
    );
  }
}

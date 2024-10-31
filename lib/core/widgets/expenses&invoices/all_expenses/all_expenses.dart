import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/widgets/expenses&invoices/all_expenses/header/all_expenses_header.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: const Column(
        children: [
          Expanded(
            child: AllExpensesHeader(),
          ),
        ],
      ),
    );
  }
}

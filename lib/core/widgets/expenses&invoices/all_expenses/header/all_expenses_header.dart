import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/utils/app_styles.dart';
import 'package:responsive_dashboard/core/widgets/expenses&invoices/all_expenses/header/filter_all_expenses.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'All Expenses',
          style: AppStyles.styleSemiBold20,
        ),
        Expanded(
          child: SizedBox(),
        ),
        FilterAllExpenses(),
      ],
    );
  }
}

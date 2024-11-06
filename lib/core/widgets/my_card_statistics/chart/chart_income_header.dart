import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/utils/app_styles.dart';
import 'package:responsive_dashboard/core/widgets/common/filter_all_expenses.dart';

class ChartIncomeHeader extends StatelessWidget {
  const ChartIncomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Income', style: AppStyles.styleSemiBold20),
        FilterButton(),
      ],
    );
  }
}

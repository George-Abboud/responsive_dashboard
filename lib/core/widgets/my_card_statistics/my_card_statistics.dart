import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/widgets/my_card_statistics/cards_and_transaction_history/my_card_section.dart';
import 'package:responsive_dashboard/core/widgets/my_card_statistics/chart/chart_income.dart';

class MyCardStatistics extends StatelessWidget {
  const MyCardStatistics({super.key, required this.padding});
  final EdgeInsetsGeometry padding;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: padding,
        child: const Column(
          children: [
            CardsAndTransactionHistory(),
            SizedBox(
              height: 24,
            ),
            ChartIncome(),
          ],
        ),
      ),
    );
  }
}

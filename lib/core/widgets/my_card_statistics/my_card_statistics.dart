import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/widgets/my_card_statistics/cards_and_transaction_history/my_card_section.dart';

class MyCardStatistics extends StatelessWidget {
  const MyCardStatistics({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(right: 24, top: 40, bottom: 32),
      child: Column(
        children: [
          CardsAndTransactionHistory(),
        ],
      ),
    );
  }
}

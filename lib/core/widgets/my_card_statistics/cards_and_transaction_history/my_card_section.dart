import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/widgets/common/custom_background_widget.dart';
import 'package:responsive_dashboard/core/widgets/my_card_statistics/cards_and_transaction_history/card/cards_section.dart';

class CardsAndTransactionHistory extends StatelessWidget {
  const CardsAndTransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundWidget(
      padding: EdgeInsets.all(24),
      child: Column(
        children: [
          CardsSection(),
        ],
      ),
    );
  }
}

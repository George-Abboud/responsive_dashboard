import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/widgets/common/custom_background_widget.dart';
import 'package:responsive_dashboard/core/widgets/my_card_statistics/cards_and_transaction_history/card/cards_section.dart';
import 'package:responsive_dashboard/core/widgets/my_card_statistics/cards_and_transaction_history/transaction_history/transaction_history_section.dart';

class CardsAndTransactionHistory extends StatelessWidget {
  const CardsAndTransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundWidget(
      padding: EdgeInsets.all(24),
      child: Column(
        children: [
          CardsSection(),
          Divider(
            height: 40,
            color: Color(0xffF1F1F1),
          ),
          TransactionHistorySection(),
        ],
      ),
    );
  }
}

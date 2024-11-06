import 'package:flutter/material.dart';
import 'package:responsive_dashboard/constants.dart';
import 'package:responsive_dashboard/core/utils/app_styles.dart';
import 'package:responsive_dashboard/core/widgets/my_card_statistics/cards_and_transaction_history/transaction_history/transaction_history_list_view.dart';

class TransactionHistorySection extends StatelessWidget {
  const TransactionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Transaction History', style: AppStyles.styleSemiBold20),
            Text('See all', style: AppStyles.styleMedium16),
          ],
        ),
        const SizedBox(height: 20),
        Text('13 April 2022',
            style: AppStyles.styleMedium16.copyWith(color: kSubtitlesColor)),
        const SizedBox(height: 16),
        const TransactionHistoryListView(),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/utils/app_data.dart';
import 'package:responsive_dashboard/core/widgets/my_card_statistics/cards_and_transaction_history/transaction_history/transaction_history_item.dart';
import 'package:responsive_dashboard/features/home/data/models/transaction_history_model.dart';

class TransactionHistoryListView extends StatelessWidget {
  const TransactionHistoryListView({super.key});

  @override
  Widget build(BuildContext context) {
    List<TransactionHistoryModel> items = AppData.transactionHistoryItems;
    return ListView.builder(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      itemCount: items.length,
      itemBuilder: (context, index) => TransactionHistoryItem(
        padding: index != 0 || index != items.length
            ? const EdgeInsets.symmetric(horizontal: 12)
            : EdgeInsets.zero,
        transactionHistoryModel: items[index],
      ),
    );
  }
}
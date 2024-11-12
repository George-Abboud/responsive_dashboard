import 'package:flutter/material.dart';
import 'package:responsive_dashboard/constants.dart';
import 'package:responsive_dashboard/core/utils/app_styles.dart';
import 'package:responsive_dashboard/features/home/data/models/transaction_history_model.dart';

class TransactionHistoryItem extends StatelessWidget {
  const TransactionHistoryItem(
      {super.key,
      required this.transactionHistoryModel,
      required this.padding});
  final TransactionHistoryModel transactionHistoryModel;
  final EdgeInsetsGeometry padding;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Card(
        margin: EdgeInsets.zero,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        color: kBackGroundItemColor,
        child: ListTile(
          title: Text(
            transactionHistoryModel.title,
            style: AppStyles.styleSemiBold16(context),
          ),
          subtitle: Text(
            transactionHistoryModel.date,
            style: AppStyles.styleRegular16(context)
                .copyWith(color: kSubtitlesColor),
          ),
          trailing: Text(
            transactionHistoryModel.mount,
            style: AppStyles.styleSemiBold20(context).copyWith(
              color: transactionHistoryModel.isWithdrawal
                  ? const Color(0xFFF3735E)
                  : const Color(0xFF7CD87A),
            ),
          ),
        ),
      ),
    );
  }
}

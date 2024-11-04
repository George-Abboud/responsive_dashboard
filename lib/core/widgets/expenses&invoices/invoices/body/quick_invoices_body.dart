import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/utils/app_styles.dart';
import 'package:responsive_dashboard/core/widgets/expenses&invoices/invoices/body/latest_transaction.dart';
import 'package:responsive_dashboard/core/widgets/expenses&invoices/invoices/body/title_text_field.dart';

class QuickInvoicesBody extends StatelessWidget {
  const QuickInvoicesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Latest Transaction',
          style: AppStyles.styleMedium16,
        ),
        SizedBox(
          height: 12,
        ),
        LatestTransaction(),
        Divider(
          color: Color(0xFFF1F1F1),
          height: 48,
        ),
        TitleTextField(
          title: 'Customer name',
          hint: 'Type customer name',
        ),
      ],
    );
  }
}

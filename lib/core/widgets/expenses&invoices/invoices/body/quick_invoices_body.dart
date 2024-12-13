import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/utils/app_styles.dart';
import 'package:responsive_dashboard/core/widgets/expenses&invoices/invoices/body/latest_transaction/latest_transaction.dart';
import 'package:responsive_dashboard/core/widgets/expenses&invoices/invoices/body/quick_invoice_form/quick_invoice_form.dart';

class QuickInvoicesBody extends StatelessWidget {
  const QuickInvoicesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Latest Transaction',
          style: AppStyles.styleMedium16(context),
        ),
        const SizedBox(
          height: 12,
        ),
        const LatestTransaction(),
        const Divider(
          color: Color(0xFFF1F1F1),
          height: 48,
        ),
        const QuickInvoiceForm(),
      ],
    );
  }
}

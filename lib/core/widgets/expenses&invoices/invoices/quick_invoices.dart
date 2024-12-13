import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/widgets/common/custom_background_widget.dart';
import 'package:responsive_dashboard/core/widgets/expenses&invoices/invoices/body/quick_invoices_body.dart';
import 'package:responsive_dashboard/core/widgets/expenses&invoices/invoices/header/quick_invoice_header.dart';

class QuickInvoices extends StatelessWidget {
  const QuickInvoices({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundWidget(
      padding: EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickInvoiceHeader(),
          SizedBox(
            height: 24,
          ),
          QuickInvoicesBody(),
        ],
      ),
    );
  }
}

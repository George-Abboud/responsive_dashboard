import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/utils/app_styles.dart';
import 'package:responsive_dashboard/core/widgets/expenses&invoices/all_expenses/body/expenses_item_header.dart';
import 'package:responsive_dashboard/features/home/data/models/expenses_item_model.dart';

class ExpensesItem extends StatelessWidget {
  const ExpensesItem({
    super.key,
    required this.expensesItemModel,
    required this.padding,
  });
  final ExpensesItemModel expensesItemModel;
  final EdgeInsetsGeometry padding;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            side: const BorderSide(width: 1, color: Color(0xFFF1F1F1)),
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ExpensesItemHeader(
              expensesItemModel: expensesItemModel,
            ),
            const SizedBox(
              height: 34,
            ),
            Text(
              expensesItemModel.title,
              style: AppStyles.styleSemiBold16,
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              expensesItemModel.date,
              style: AppStyles.styleRegular14,
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              expensesItemModel.cost,
              style: AppStyles.styleSemiBold24,
            ),
          ],
        ),
      ),
    );
  }
}

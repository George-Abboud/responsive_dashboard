import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/widgets/expenses&invoices/all_expenses/body/active_and_inactive_all_expenses_item.dart';
import 'package:responsive_dashboard/features/home/data/models/expenses_item_model.dart';

class ExpensesItem extends StatelessWidget {
  const ExpensesItem({
    super.key,
    required this.expensesItemModel,
    required this.padding,
    required this.isActive,
  });
  final ExpensesItemModel expensesItemModel;
  final EdgeInsetsGeometry padding;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: isActive
          ? ActiveExpensesItem(expensesItemModel: expensesItemModel)
          : InActiveExpensesItem(expensesItemModel: expensesItemModel),
    );
  }
}

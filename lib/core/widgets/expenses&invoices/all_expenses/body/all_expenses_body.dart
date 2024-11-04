import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/utils/app_data.dart';
import 'package:responsive_dashboard/core/widgets/expenses&invoices/all_expenses/body/expenses_card.dart';
import 'package:responsive_dashboard/features/home/data/models/expenses_item_model.dart';

class AllExpensesBody extends StatefulWidget {
  const AllExpensesBody({super.key});

  @override
  State<AllExpensesBody> createState() => _AllExpensesBodyState();
}

class _AllExpensesBodyState extends State<AllExpensesBody> {
  late int currentIndex;

  @override
  void initState() {
    currentIndex = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: AppData.allExpensesItems
          .asMap()
          .entries
          .map(
            (e) => Expanded(
              child: GestureDetector(
                onTap: () {
                  currentIndex = e.key;
                  setState(() {});
                },
                child: ExpensesItem(
                  isActive: currentIndex == e.key ? true : false,
                  padding: formatPadding(e),
                  expensesItemModel: e.value,
                ),
              ),
            ),
          )
          .toList(),
    );
  }

  EdgeInsets formatPadding(MapEntry<int, ExpensesItemModel> e) {
    return e.key == 0
        ? const EdgeInsets.only(right: 6)
        : e.key == AppData.allExpensesItems.length - 1
            ? const EdgeInsets.only(left: 6)
            : const EdgeInsets.symmetric(horizontal: 6);
  }
}

import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/utils/app_data.dart';
import 'package:responsive_dashboard/core/widgets/my_card_statistics/chart/body/details_item.dart';
import 'package:responsive_dashboard/features/home/data/models/income_details_item_model.dart';

class DetailsListView extends StatelessWidget {
  const DetailsListView({super.key});

  @override
  Widget build(BuildContext context) {
    List<IncomeDetailsItemModel> items = AppData.incomeDetailsItems;
    return ListView.builder(
      itemCount: items.length,
      shrinkWrap: true,
      itemBuilder: (context, index) => DetailsItem(
        padding: formatPadding(index, items.length),
        incomeDetailsItemModel: items[index],
      ),
    );
  }

  EdgeInsets formatPadding(int index, int length) {
    return index == 0
        ? const EdgeInsets.only(bottom: 6)
        : index == length - 1
            ? const EdgeInsets.only(top: 6)
            : const EdgeInsets.symmetric(vertical: 6);
  }
}

import 'package:flutter/material.dart';
import 'package:responsive_dashboard/constants.dart';
import 'package:responsive_dashboard/core/utils/app_styles.dart';
import 'package:responsive_dashboard/features/home/data/models/income_details_item_model.dart';

class DetailsItem extends StatelessWidget {
  const DetailsItem(
      {super.key, required this.incomeDetailsItemModel, required this.padding});
  final IncomeDetailsItemModel incomeDetailsItemModel;
  final EdgeInsetsGeometry padding;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: ListTile(
        minTileHeight: 20,
        minVerticalPadding: 0,
        contentPadding: EdgeInsets.zero,
        horizontalTitleGap: 12,
        leading: Container(
          width: 12,
          height: 12,
          decoration: ShapeDecoration(
            color: incomeDetailsItemModel.color,
            shape: const OvalBorder(),
          ),
        ),
        title: Text(
          incomeDetailsItemModel.title,
          style: AppStyles.styleRegular16(context),
        ),
        trailing: Text(
          '${incomeDetailsItemModel.value}%',
          style:
              AppStyles.styleMedium16(context).copyWith(color: kPrimaryColor),
        ),
      ),
    );
  }
}

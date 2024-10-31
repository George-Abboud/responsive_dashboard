import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/core/utils/app_images.dart';
import 'package:responsive_dashboard/core/utils/app_styles.dart';
import 'package:responsive_dashboard/features/home/data/models/expenses_item_model.dart';

class ExpensesItem extends StatelessWidget {
  const ExpensesItem({
    super.key,
    required this.expensesItemModel,
  });
  final ExpensesItemModel expensesItemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
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
          Row(
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: const ShapeDecoration(
                  color: Color(0xFFFAFAFA),
                  shape: OvalBorder(),
                ),
                child: Center(child: SvgPicture.asset(expensesItemModel.image)),
              ),
              const Spacer(),
              SvgPicture.asset(AppImages.imagesArrowRight),
            ],
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
    );
  }
}

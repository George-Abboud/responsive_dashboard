import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/core/utils/app_images.dart';
import 'package:responsive_dashboard/features/home/data/models/expenses_item_model.dart';

class ExpensesItemHeader extends StatelessWidget {
  const ExpensesItemHeader({
    super.key,
    required this.expensesItemModel,
  });

  final ExpensesItemModel expensesItemModel;

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}

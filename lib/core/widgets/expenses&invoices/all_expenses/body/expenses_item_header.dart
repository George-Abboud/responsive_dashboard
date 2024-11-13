import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/constants.dart';
import 'package:responsive_dashboard/core/utils/app_images.dart';
import 'package:responsive_dashboard/features/home/data/models/expenses_item_model.dart';

class ExpensesItemHeader extends StatelessWidget {
  const ExpensesItemHeader({
    super.key,
    required this.expensesItemModel,
    this.imageBackGroundColor,
    this.imageColor,
    this.arrowColor,
  });

  final ExpensesItemModel expensesItemModel;
  final Color? imageBackGroundColor, imageColor, arrowColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 60),
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                decoration: ShapeDecoration(
                  color: imageBackGroundColor ?? kBackGroundItemColor,
                  shape: const OvalBorder(),
                ),
                child: Center(
                  child: SvgPicture.asset(
                    expensesItemModel.image,
                    colorFilter: ColorFilter.mode(
                        imageColor ?? kPrimaryColor, BlendMode.srcIn),
                  ),
                ),
              ),
            ),
          ),
        ),
        const Spacer(),
        Flexible(
          child: SvgPicture.asset(
            AppImages.imagesArrowRight,
            colorFilter:
                ColorFilter.mode(arrowColor ?? kTitlesColor, BlendMode.srcIn),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/core/utils/app_images.dart';
import 'package:responsive_dashboard/core/utils/app_styles.dart';

class FilterAllExpenses extends StatelessWidget {
  const FilterAllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xFFF1F1F1)),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Row(
        children: [
          const Text(
            'Monthly',
            style: AppStyles.styleMedium16,
          ),
          const SizedBox(
            width: 18,
          ),
          SvgPicture.asset(AppImages.imagesArrowDown),
        ],
      ),
    );
  }
}

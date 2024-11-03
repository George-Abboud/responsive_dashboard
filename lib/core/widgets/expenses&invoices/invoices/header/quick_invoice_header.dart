import 'package:flutter/material.dart';
import 'package:responsive_dashboard/constants.dart';
import 'package:responsive_dashboard/core/utils/app_styles.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          'Quick Invoice',
          style: AppStyles.styleSemiBold20,
        ),
        Spacer(),
        CustomAddIcon(),
      ],
    );
  }
}

class CustomAddIcon extends StatelessWidget {
  const CustomAddIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const ShapeDecoration(
        color: kBackGroundItemColor,
        shape: OvalBorder(),
      ),
      child: const Padding(
        padding: EdgeInsets.all(15),
        child: Icon(
          Icons.add,
          color: kPrimaryColor,
          size: 18,
        ),
      ),
    );
  }
}

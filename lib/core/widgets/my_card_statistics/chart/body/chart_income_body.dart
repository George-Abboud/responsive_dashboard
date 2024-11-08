import 'package:flutter/material.dart';
import 'package:responsive_dashboard/constants.dart';
import 'package:responsive_dashboard/core/utils/app_styles.dart';
import 'package:responsive_dashboard/core/widgets/my_card_statistics/chart/body/chart_income_details.dart';

class ChartIncomeBody extends StatelessWidget {
  const ChartIncomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ChartIncomeDetails(),
        const Divider(
          height: 56,
          color: Color(0xffF1F1F1),
        ),
        Text('See detail',
            textAlign: TextAlign.center,
            style: AppStyles.styleSemiBold16.copyWith(color: kPrimaryColor)),
      ],
    );
  }
}

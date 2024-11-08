import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/widgets/common/custom_background_widget.dart';
import 'package:responsive_dashboard/core/widgets/my_card_statistics/chart/body/chart_income_body.dart';
import 'package:responsive_dashboard/core/widgets/my_card_statistics/chart/header/chart_income_header.dart';

class ChartIncome extends StatelessWidget {
  const ChartIncome({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundWidget(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          ChartIncomeHeader(),
          SizedBox(
            height: 16,
          ),
          ChartIncomeBody(),
        ],
      ),
    );
  }
}

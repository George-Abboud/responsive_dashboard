import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/widgets/my_card_statistics/chart/body/custom_chart.dart';
import 'package:responsive_dashboard/core/widgets/my_card_statistics/chart/body/details_list_view.dart';

class ChartIncomeDetails extends StatelessWidget {
  const ChartIncomeDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(flex: 2, child: CustomChart()),
        SizedBox(
          width: 40,
        ),
        Expanded(flex: 4, child: DetailsListView()),
      ],
    );
  }
}

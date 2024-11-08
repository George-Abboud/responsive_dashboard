import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/utils/app_data.dart';
import 'package:responsive_dashboard/features/home/data/models/income_details_item_model.dart';

class CustomChart extends StatefulWidget {
  const CustomChart({super.key});

  @override
  State<CustomChart> createState() => _CustomChartState();
}

class _CustomChartState extends State<CustomChart> {
  int activeIndex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(
        getChartData(),
      ),
    );
  }

  PieChartData getChartData() {
    List<IncomeDetailsItemModel> items = AppData.incomeDetailsItems;
    List<PieChartSectionData> pieChartItems = [];
    for (int i = 0; i < items.length; i++) {
      pieChartItems.add(
        PieChartSectionData(
            value: items[i].value,
            color: items[i].color,
            showTitle: false,
            radius: activeIndex == i ? 25 : 21),
      );
    }
    return PieChartData(
      pieTouchData: PieTouchData(
        touchCallback: (p0, pieTouchResponse) {
          activeIndex =
              pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
          setState(() {});
        },
      ),
      sectionsSpace: 0,
      sections: pieChartItems,
    );
  }
}

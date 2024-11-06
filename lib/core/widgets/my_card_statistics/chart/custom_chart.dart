import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/constants.dart';

class CustomChart extends StatefulWidget {
  const CustomChart({super.key});

  @override
  State<CustomChart> createState() => _CustomChartState();
}

class _CustomChartState extends State<CustomChart> {
  int activeIndex = -1;
  @override
  Widget build(BuildContext context) {
    return PieChart(getChartData());
  }

  PieChartData getChartData() {
    return PieChartData(
      pieTouchData: PieTouchData(
        touchCallback: (p0, pieTouchResponse) {
          activeIndex =
              pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
        },
      ),
      sectionsSpace: 0,
      sections: [
        PieChartSectionData(
            value: 40,
            color: const Color(0xFF208BC7),
            showTitle: false,
            radius: activeIndex == 0 ? 60 : 50),
        PieChartSectionData(
            value: 25,
            color: kPrimaryColor,
            showTitle: false,
            radius: activeIndex == 1 ? 60 : 50),
        PieChartSectionData(
            value: 20,
            color: kTitlesColor,
            showTitle: false,
            radius: activeIndex == 2 ? 60 : 50),
        PieChartSectionData(
            value: 22,
            color: const Color(0xFFE2DECD),
            showTitle: false,
            radius: activeIndex == 3 ? 60 : 50),
      ],
    );
  }
}

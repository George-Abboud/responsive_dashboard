import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/widgets/drawer/custom_drawer.dart';
import 'package:responsive_dashboard/features/home/presentation/views/widgets/layouts/mobile/mobile_layout.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          flex: 2,
          child: CustomDrawer(),
        ),
        SizedBox(
          width: 24,
        ),
        Expanded(
          flex: 5,
          child: MobileLayout(
            expensesPadding: EdgeInsets.only(top: 40, bottom: 24),
          ),
        ),
        SizedBox(
          width: 24,
        ),
      ],
    );
  }
}

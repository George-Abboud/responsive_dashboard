import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/widgets/adaptive_layout_widget.dart';
import 'package:responsive_dashboard/features/home/presentation/views/widgets/layouts/desktop/desktop_layout.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveLayoutWidget(
        mobileLayout: (context) => const SizedBox(),
        tabletLayout: (context) => const SizedBox(),
        desktopLayout: (context) => const DesktopLayout(),
      ),
    );
  }
}
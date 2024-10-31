import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/widgets/custom_drawer.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Row(
        children: [
          Expanded(
            child: CustomDrawer(),
          ),
        ],
      ),
    );
  }
}

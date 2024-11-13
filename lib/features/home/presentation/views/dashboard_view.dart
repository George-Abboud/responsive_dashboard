import 'package:flutter/material.dart';
import 'package:responsive_dashboard/constants.dart';
import 'package:responsive_dashboard/core/widgets/common/adaptive_layout_widget.dart';
import 'package:responsive_dashboard/core/widgets/drawer/custom_drawer.dart';
import 'package:responsive_dashboard/features/home/presentation/views/widgets/layouts/desktop/desktop_layout.dart';
import 'package:responsive_dashboard/features/home/presentation/views/widgets/layouts/mobile/mobile_layout.dart';
import 'package:responsive_dashboard/features/home/presentation/views/widgets/layouts/tablet/tablet_layout.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer:
          MediaQuery.sizeOf(context).width < 800 ? const CustomDrawer() : null,
      appBar: MediaQuery.sizeOf(context).width < 800
          ? AppBar(
              leadingWidth: 64,
              scrolledUnderElevation: 0,
              leading: Padding(
                padding: const EdgeInsets.only(left: 0),
                child: IconButton(
                  onPressed: () {
                    scaffoldKey.currentState!.openDrawer();
                  },
                  icon: const Icon(
                    Icons.menu,
                    color: kTitlesColor,
                  ),
                ),
              ),
              elevation: 0,
              backgroundColor: kBackGroundItemColor,
              shape: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: kTitlesColor.withOpacity(0.7),
                ),
              ),
            )
          : null,
      backgroundColor: const Color(0xFFF7F9FA),
      body: AdaptiveLayoutWidget(
        mobileLayout: (context) => const MobileLayout(
          expensesPadding: EdgeInsets.only(bottom: 24, top: 16),
        ),
        tabletLayout: (context) => const TabletLayout(),
        desktopLayout: (context) => const DesktopLayout(),
      ),
    );
  }
}

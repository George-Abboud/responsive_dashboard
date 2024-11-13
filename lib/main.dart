import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/features/home/presentation/views/dashboard_view.dart';

// void main() {
//   runApp(
//     DevicePreview(
//       enabled: true,
//       builder: (context) => const ResponsiveDashboard(),
//     ),
//   );
// }
void main() {
  runApp(const ResponsiveDashboard());
}

class ResponsiveDashboard extends StatelessWidget {
  const ResponsiveDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      home: const DashboardView(),
    );
  }
}

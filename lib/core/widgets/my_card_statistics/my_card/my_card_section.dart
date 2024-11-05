import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/widgets/common/custom_background_widget.dart';
import 'package:responsive_dashboard/core/widgets/my_card_statistics/my_card/my_card.dart';

class MyCardSection extends StatelessWidget {
  const MyCardSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundWidget(
      padding: EdgeInsets.all(24),
      child: Column(
        children: [
          MyCard(),
        ],
      ),
    );
  }
}

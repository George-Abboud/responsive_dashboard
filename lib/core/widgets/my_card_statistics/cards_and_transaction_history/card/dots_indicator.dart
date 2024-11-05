import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/widgets/my_card_statistics/cards_and_transaction_history/card/custom_dot_indicator.dart';

class DotsIndicator extends StatelessWidget {
  const DotsIndicator({super.key, required this.currentIndex});
  final int currentIndex;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        3,
        (index) => CustomDotIndicator(isActive: currentIndex == index),
      ),
    );
  }
}

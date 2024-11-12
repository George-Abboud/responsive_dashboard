import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/utils/app_styles.dart';
import 'package:responsive_dashboard/core/widgets/my_card_statistics/cards_and_transaction_history/card/dots_indicator.dart';
import 'package:responsive_dashboard/core/widgets/my_card_statistics/cards_and_transaction_history/card/my_cards_page_view.dart';

class CardsSection extends StatefulWidget {
  const CardsSection({super.key});

  @override
  State<CardsSection> createState() => _CardsSectionState();
}

class _CardsSectionState extends State<CardsSection> {
  int currentIndex = 0;
  late PageController pageController;

  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(
      () {
        currentIndex = pageController.page!.round();
        setState(() {});
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'My Card',
          style: AppStyles.styleSemiBold20(context),
        ),
        const SizedBox(
          height: 20,
        ),
        MyCardsPageView(
          pageController: pageController,
        ),
        const SizedBox(
          height: 20,
        ),
        DotsIndicator(
          currentIndex: currentIndex,
        ),
      ],
    );
  }
}

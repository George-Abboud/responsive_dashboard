import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/utils/app_images.dart';
import 'package:responsive_dashboard/core/widgets/drawer/custom_drawer_item.dart';
import 'package:responsive_dashboard/features/home/data/models/drawer_item_model.dart';

class DrawerItemsListView extends StatefulWidget {
  const DrawerItemsListView({
    super.key,
  });

  @override
  State<DrawerItemsListView> createState() => _DrawerItemsListViewState();
}

class _DrawerItemsListViewState extends State<DrawerItemsListView> {
  final List<DrawerItemModel> drawerItems = const [
    DrawerItemModel(
      image: AppImages.imagesDashboard,
      title: 'Dashboard',
    ),
    DrawerItemModel(
      image: AppImages.imagesMyTransaction,
      title: 'My Transaction',
    ),
    DrawerItemModel(
      image: AppImages.imagesStatistics,
      title: 'Statistics',
    ),
    DrawerItemModel(
      image: AppImages.imagesWallet,
      title: 'Wallet Account',
    ),
    DrawerItemModel(
      image: AppImages.imagesInvestments,
      title: 'My Investments',
    ),
  ];

  late int currentIndex;

  @override
  void initState() {
    currentIndex = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: drawerItems.length,
      itemBuilder: (context, index) => GestureDetector(
        onTap: () {
          if (currentIndex != index) {
            setState(() {
              currentIndex = index;
            });
          }
        },
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: CustomDrawerItem(
            drawerItem: drawerItems[index],
            isActive: currentIndex == index,
          ),
        ),
      ),
    );
  }
}

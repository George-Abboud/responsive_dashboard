import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/utils/app_data.dart';
import 'package:responsive_dashboard/core/widgets/drawer/custom_drawer_item.dart';

class DrawerItemsListView extends StatefulWidget {
  const DrawerItemsListView({
    super.key,
  });

  @override
  State<DrawerItemsListView> createState() => _DrawerItemsListViewState();
}

class _DrawerItemsListViewState extends State<DrawerItemsListView> {
  late int currentIndex;

  @override
  void initState() {
    currentIndex = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: AppData.drawerItems.length - 2,
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
            drawerItem: AppData.drawerItems[index],
            isActive: currentIndex == index,
          ),
        ),
      ),
    );
  }
}

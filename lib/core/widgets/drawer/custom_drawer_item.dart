import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/widgets/drawer/active_and_inactive_drawer_items.dart';
import 'package:responsive_dashboard/features/home/data/models/drawer_item_model.dart';

class CustomDrawerItem extends StatelessWidget {
  const CustomDrawerItem(
      {super.key, required this.drawerItem, required this.isActive});
  final DrawerItemModel drawerItem;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveDrawerItem(drawerItem: drawerItem)
        : InActiveDrawerItem(drawerItem: drawerItem);
  }
}

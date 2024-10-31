import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashboard/core/utils/app_styles.dart';
import 'package:responsive_dashboard/features/home/data/models/drawer_item_model.dart';

class CustomDrawerItem extends StatelessWidget {
  const CustomDrawerItem({super.key, required this.drawerItem});
  final DrawerItemModel drawerItem;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        drawerItem.title,
        style: AppStyles.styleRegular16,
      ),
      leading: SvgPicture.asset(drawerItem.image),
    );
  }
}

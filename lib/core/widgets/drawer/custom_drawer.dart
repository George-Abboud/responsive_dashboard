import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/utils/app_images.dart';
import 'package:responsive_dashboard/core/widgets/drawer/active_and_inactive_drawer_items.dart';
import 'package:responsive_dashboard/core/widgets/drawer/drawer_items_list_view.dart';
import 'package:responsive_dashboard/core/widgets/user_info_list_tile.dart';
import 'package:responsive_dashboard/features/home/data/models/drawer_item_model.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                SizedBox(
                  height: 24,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: UserInfoListTile(
                    image: AppImages.imagesAvatar3,
                    title: 'Lekan Okeowo',
                    subtitle: 'demo@gmail.com',
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
              ],
            ),
          ),
          SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              sliver: DrawerItemsListView()),
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            sliver: SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 20,
                    ),
                  ),
                  InActiveDrawerItem(
                    drawerItem: DrawerItemModel(
                        image: AppImages.imagesSettings,
                        title: 'Setting system'),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: InActiveDrawerItem(
                      drawerItem: DrawerItemModel(
                          image: AppImages.imagesLogout,
                          title: 'Logout account'),
                    ),
                  ),
                  SizedBox(
                    height: 48,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

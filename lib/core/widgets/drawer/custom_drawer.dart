import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/utils/app_data.dart';
import 'package:responsive_dashboard/core/utils/app_images.dart';
import 'package:responsive_dashboard/core/widgets/drawer/active_and_inactive_drawer_items.dart';
import 'package:responsive_dashboard/core/widgets/drawer/drawer_items_list_view.dart';
import 'package:responsive_dashboard/core/widgets/common/user_info_list_tile.dart';
import 'package:responsive_dashboard/features/home/data/models/user_info_model.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: Column(
              children: [
                SizedBox(
                  height: 24,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: UserInfoListTile(
                    userInfoModel: UserInfoModel(
                        image: AppImages.imagesAvatar3,
                        name: 'Lekan Okeowo',
                        email: 'demo@gmail.com'),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
              ],
            ),
          ),
          const SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              sliver: DrawerItemsListView()),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            sliver: SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                children: [
                  const Expanded(
                    child: SizedBox(
                      height: 20,
                    ),
                  ),
                  InActiveDrawerItem(
                    drawerItem: AppData.drawerItems[5],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: InActiveDrawerItem(
                      drawerItem: AppData.drawerItems.last,
                    ),
                  ),
                  const SizedBox(
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

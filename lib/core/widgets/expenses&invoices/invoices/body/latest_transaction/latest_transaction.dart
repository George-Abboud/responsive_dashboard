import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/utils/app_data.dart';
import 'package:responsive_dashboard/core/widgets/common/user_info_list_tile.dart';
import 'package:responsive_dashboard/features/home/data/models/user_info_model.dart';

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    List<UserInfoModel> userInfoItems = AppData.userInfoItems;
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: userInfoItems
            .map(
              (e) => IntrinsicWidth(
                child: UserInfoListTile(userInfoModel: e),
              ),
            )
            .toList(),
      ),
    );
  }
}

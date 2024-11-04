import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashboard/constants.dart';
import 'package:responsive_dashboard/core/utils/app_styles.dart';
import 'package:responsive_dashboard/features/home/data/models/user_info_model.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({
    super.key,
    required this.userInfoModel,
  });
  final UserInfoModel userInfoModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: kBackGroundItemColor,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          12,
        ),
      ),
      child: ListTile(
        leading: SvgPicture.asset(userInfoModel.image),
        title: Text(
          userInfoModel.name,
          style: AppStyles.styleSemiBold16,
        ),
        subtitle: Text(
          userInfoModel.email,
          style: AppStyles.styleRegular12,
        ),
      ),
    );
  }
}

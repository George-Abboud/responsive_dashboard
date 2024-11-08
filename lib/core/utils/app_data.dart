import 'package:flutter/material.dart';
import 'package:responsive_dashboard/constants.dart';
import 'package:responsive_dashboard/core/utils/app_images.dart';
import 'package:responsive_dashboard/features/home/data/models/drawer_item_model.dart';
import 'package:responsive_dashboard/features/home/data/models/expenses_item_model.dart';
import 'package:responsive_dashboard/features/home/data/models/income_details_item_model.dart';
import 'package:responsive_dashboard/features/home/data/models/transaction_history_model.dart';
import 'package:responsive_dashboard/features/home/data/models/user_info_model.dart';

abstract class AppData {
  static const List<DrawerItemModel> drawerItems = [
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
    DrawerItemModel(
      image: AppImages.imagesSettings,
      title: 'Setting system',
    ),
    DrawerItemModel(
      image: AppImages.imagesLogout,
      title: 'Logout account',
    ),
  ];

  static const List<ExpensesItemModel> allExpensesItems = [
    ExpensesItemModel(
      title: 'Balance',
      date: 'April 2022',
      cost: r'$20,129',
      image: AppImages.imagesBalance,
    ),
    ExpensesItemModel(
      title: 'Income',
      date: 'April 2022',
      cost: r'$20,129',
      image: AppImages.imagesIncome,
    ),
    ExpensesItemModel(
      title: 'Expenses',
      date: 'April 2022',
      cost: r'$20,129',
      image: AppImages.imagesExpenses,
    ),
  ];

  static const List<UserInfoModel> userInfoItems = [
    UserInfoModel(
        image: AppImages.imagesAvatar1,
        name: 'Madrani Andi',
        email: 'Madraniadi20@gmail.com'),
    UserInfoModel(
        image: AppImages.imagesAvatar2,
        name: 'Josua Nunito',
        email: 'Josh Nunito@gmail.com'),
    UserInfoModel(
        image: AppImages.imagesAvatar1,
        name: 'Madrani Andi',
        email: 'Madraniadi20@gmail.com'),
  ];

  static const List<TransactionHistoryModel> transactionHistoryItems = [
    TransactionHistoryModel(
      title: 'Cash Withdrawal',
      date: '13 Apr, 2022 ',
      mount: r'$20,129',
      isWithdrawal: true,
    ),
    TransactionHistoryModel(
      title: 'Landing Page project',
      date: '13 Apr, 2022 at 3:30 PM',
      mount: r'$2,000',
      isWithdrawal: false,
    ),
    TransactionHistoryModel(
      title: 'Juni Mobile App project',
      date: '13 Apr, 2022 at 3:30 PM',
      mount: r'$20,129',
      isWithdrawal: false,
    ),
  ];

  static const List<IncomeDetailsItemModel> incomeDetailsItems = [
    IncomeDetailsItemModel(
      title: 'Design service',
      value: 40,
      color: Color(0xFF208BC7),
    ),
    IncomeDetailsItemModel(
      title: 'Design product',
      value: 25,
      color: kPrimaryColor,
    ),
    IncomeDetailsItemModel(
      title: 'Product royalti',
      value: 20,
      color: kTitlesColor,
    ),
    IncomeDetailsItemModel(
      title: 'Other',
      value: 22,
      color: Color(0xFFE2DECD),
    ),
  ];
}

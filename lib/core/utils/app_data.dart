import 'package:responsive_dashboard/core/utils/app_images.dart';
import 'package:responsive_dashboard/core/widgets/expenses&invoices/all_expenses/all_expenses.dart';
import 'package:responsive_dashboard/features/home/data/models/drawer_item_model.dart';
import 'package:responsive_dashboard/features/home/data/models/expenses_item_model.dart';

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
}
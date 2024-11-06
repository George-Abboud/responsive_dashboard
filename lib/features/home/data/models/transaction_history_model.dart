class TransactionHistoryModel {
  final String title, date, mount;
  final bool isWithdrawal;

  const TransactionHistoryModel(
      {required this.title,
      required this.date,
      required this.mount,
      required this.isWithdrawal});
}

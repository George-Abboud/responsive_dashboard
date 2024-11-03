import 'package:flutter/material.dart';
import 'package:responsive_dashboard/constants.dart';

class AddQuickInvoiceIcon extends StatelessWidget {
  const AddQuickInvoiceIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const ShapeDecoration(
        color: kBackGroundItemColor,
        shape: OvalBorder(),
      ),
      child: const Padding(
        padding: EdgeInsets.all(15),
        child: Icon(
          Icons.add,
          color: kPrimaryColor,
          size: 18,
        ),
      ),
    );
  }
}

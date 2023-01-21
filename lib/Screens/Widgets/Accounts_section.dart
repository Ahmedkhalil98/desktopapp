import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AccountsSection extends StatelessWidget {
  const AccountsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            labelAccounts(labelText: "Sub total: 48"),
            labelAccounts(labelText: "Servic: 00"),
          ],
        ),
        SizedBox(
          height: 12.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            labelAccounts(labelText: "Discount: 00"),
            labelAccounts(labelText: "Total: 100"),
          ],
        )
      ],
    );
  }

  Widget labelAccounts({required String labelText}) {
    return Expanded(
      flex: 1,
      child: Text(
        textAlign: TextAlign.center,
        "$labelText \$",
        style: TextStyle(
          fontSize: 5.sp,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GroupButtonsWidgets extends StatelessWidget {
  const GroupButtonsWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 4.h),
          child: Row(
            children: [
              buttonFun(title: "Timer", icon: Icons.timer),
              buttonFun(title: "Person-No", icon: Icons.groups),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 4.h),
          child: Row(
            children: [
              buttonFun(title: "Discount", icon: Icons.percent),
              buttonFun(title: "Services", icon: Icons.build),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 4.h),
          child: Row(
            children: [
              buttonFun(title: "Name", icon: Icons.account_circle),
              buttonFun(title: "Note", icon: Icons.event_note),
            ],
          ),
        ),
      ],
    );
  }

  Widget buttonFun({required String title, required IconData icon}) {
    return Expanded(
      flex: 1,
      child: Container(
        height: 46.h,
        decoration: BoxDecoration(
            border: Border.all(
              width: 0.6,
            ),
            borderRadius: BorderRadius.circular(10.r)),
        child: ListTile(
          title: Text(
            title,
            style: TextStyle(fontSize: 4.sp),
          ),
          leading: Icon(
            icon,
            size: 8.w,
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: non_constant_identifier_names
Widget ImpOptionButtonWidget(
    {required String title, required IconData icon, Color? color , Function? function}) {
  return Expanded(
    flex: 1,
    child: GestureDetector(
      child: Container(
        alignment: Alignment.center,
        height: 50.h,
        decoration: BoxDecoration(
            color: color,
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
    ),
  );
}

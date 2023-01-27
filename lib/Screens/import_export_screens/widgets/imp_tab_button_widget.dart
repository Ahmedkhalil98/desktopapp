import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget tabButtonStyle({
  required int index,
  String? title,
  String? imgUrl,
  Function()? function,
}) {
  return Expanded(
    flex: 1,
    child: GestureDetector(
      onTap: function,
      child: Container(
        height: 50.h,
        decoration: BoxDecoration(
            // ! change color
            // color: index == homeController.indexOfheader.value
            //     ? Colors.blue[400]
            //     : null,
            border: Border.all(
              width: 0.6,
            ),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10.r),
                bottomRight: Radius.circular(10.r))),
        child: ListTile(
          title: Text(
            title!,
            style: TextStyle(fontSize: 4.sp),
          ),
          leading: Image.asset(
            imgUrl!,
            height: 40.h,
          ),
        ),
      ),
    ),
  );
}

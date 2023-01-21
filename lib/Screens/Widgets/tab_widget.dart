import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TabsButtonWidgets extends StatelessWidget {
  const TabsButtonWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        tabButtonStyle(title: "Table", imgUrl: "assets/table_black.png"),
        tabButtonStyle(title: "Delivery", imgUrl: "assets/table_black.png"),
        tabButtonStyle(title: "To-Go", imgUrl: "assets/table_black.png"),
      ],
    );
  }

  Widget tabButtonStyle({String? title, String? imgUrl}) {
    return Expanded(
      flex: 1,
      child: Container(
        height: 50.h,
        decoration: BoxDecoration(
            // color: Colors.blue[400],
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
    );
  }
}

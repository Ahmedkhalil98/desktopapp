import 'package:desktopapp/Controllers/myHomePage_Controllers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class TabsButtonWidgets extends StatelessWidget {
  TabsButtonWidgets({super.key});
  final homeController = Get.put(MyHomePageController());
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          tabButtonStyle(
              index: 0,
              title: "Table",
              imgUrl: "assets/table_black.png",
              function: () => homeController.clickTab(0)),
          tabButtonStyle(
              index: 1,
              title: "Delivery",
              imgUrl: "assets/delivery.png",
              function: () => homeController.clickTab(1)),
          tabButtonStyle(
              index: 2,
              title: "To-Go",
              imgUrl: "assets/to_go_icons.png",
              function: () => homeController.clickTab(2)),
        ],
      ),
    );
  }

  Widget tabButtonStyle(
      {required int index,
      String? title,
      String? imgUrl,
      Function()? function}) {
    return Expanded(
      flex: 1,
      child: GestureDetector(
        onTap: function,
        child: Container(
          height: 50.h,
          decoration: BoxDecoration(
              //! change color
              color: index == homeController.indexOfheader.value
                  ? Colors.blue[400]
                  : null,
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
}

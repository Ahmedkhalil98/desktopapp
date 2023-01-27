import 'package:desktopapp/Controllers/myHomePage_Controllers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ImpOptionsButton extends StatelessWidget {
  final homeController = Get.put(MyHomePageController());
  ImpOptionsButton({super.key});
  @override
  Widget build(BuildContext context) {
    return Obx(() => Container(
          margin: EdgeInsets.symmetric(horizontal: 5.w),
          child: Row(
            children: [
              tabButtonStyle(
                index: 0,
                icon: const Icon(
                  Icons.search,
                ),
                function: () => homeController.clickTab(0),
                title: "Search",
              ),
              SizedBox(
                width: 10.w,
              ),
              tabButtonStyle(
                index: 1,
                icon: const Icon(
                  Icons.add,
                ),
                title: "Add",
                function: () => homeController.clickTab(1),
              ),
            ],
          ),
        ));
  }

  Widget tabButtonStyle({
    required int index,
    String? title,
    Icon? icon,
    Function()? function,
  }) {
    return Expanded(
      flex: 1,
      child: GestureDetector(
        onTap: function,
        child: Container(
          height: 50.h,
          decoration: BoxDecoration(
            //! change color
            color: index == homeController.indexOfheader.value
                ? Colors.orange[400]
                : Colors.blue[100],
            border: Border.all(
              width: 0.6,
            ),
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: ListTile(
              title: Text(
                title!,
                style: TextStyle(fontSize: 4.sp),
              ),
              leading: icon),
        ),
      ),
    );
  }
}

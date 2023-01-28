import 'package:desktopapp/functions/setDate.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SetDateTextField extends StatelessWidget {
  TextEditingController? datecontroller;
  SetDateTextField({super.key, this.datecontroller});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SetDateController>(
      init: Get.put(SetDateController()),
      builder: (controller) {
        return SizedBox(
          height: 50.h,
          width: 100.w,
          // padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 4.h),
          child: TextFormField(
            readOnly: true,
            onTap: () async {
              controller.setDate(context);
              datecontroller!.text = controller.formattedDate;
            },
            controller: datecontroller,
            style: Theme.of(context).textTheme.bodySmall,
            decoration: InputDecoration(
              hintStyle: Theme.of(context).textTheme.bodyMedium,
              helperStyle: const TextStyle(color: Colors.red),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.r),
              ),
              suffixIcon: const Icon(Icons.calendar_today),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.r),
                  borderSide: const BorderSide(width: 1, color: Colors.grey)),
            ),
          ),
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ButtonSection extends StatelessWidget {
  const ButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 0.5.w,
        ),
        Expanded(
          flex: 1,
          child: Container(
            alignment: Alignment.center,
            height: 50.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6.r), color: Colors.black),
            child: const Text(
              "Print",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
        SizedBox(
          width: 1.w,
        ),
        Expanded(
          flex: 1,
          child: Container(
            alignment: Alignment.center,
            height: 50.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6.r), color: Colors.red),
            child: const Text(
              "Ponding",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
        SizedBox(
          width: 1.w,
        ),
        Expanded(
          flex: 2,
          child: Container(
            alignment: Alignment.center,
            height: 50.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6.r), color: Colors.green),
            child: const Text(
              "Pay",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
        SizedBox(
          width: 0.5.w,
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TogoListScreen extends StatelessWidget {
  const TogoListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(width: 1, color: Colors.black)),
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 20,
            itemBuilder: (context, index) {
              return Container(
                padding: EdgeInsets.symmetric(horizontal: 3.w),
                margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                width: 40.w,
                height: 55,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.orange,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/to_go_orange.png",
                      width: 10.w,
                    ),
                    SizedBox(
                      width: 3.w,
                    ),
                    Icon(
                      Icons.timer_outlined,
                      size: 8.w,
                      color: Colors.orange,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text(
                        "20:20",
                        style: TextStyle(fontSize: 4.sp, color: Colors.orange),
                      ),
                    )
                  ],
                ),
              );
            }));
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FoodDisplayScreen extends StatelessWidget {
  final String image;
  final String title;
  final double price;
  const FoodDisplayScreen({
    super.key,
    required this.image,
    required this.title,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 7,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                width: 1,
                color: Colors.black,
              )),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: GridView.builder(
                itemCount: 50,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisSpacing: 5.w,
                    mainAxisSpacing: 5.h,
                    crossAxisCount: 5),
                itemBuilder: (context, index) {
                  return Container(
                    width: 60.w,
                    height: 60.h,
                    decoration: BoxDecoration(
                      border: Border.all(width: 2, color: Colors.black),
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          image,
                          height: 20.w,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              title,
                              style: TextStyle(fontSize: 4.sp),
                            ),
                            Text("$price\$",
                                style: TextStyle(
                                  fontSize: 4.sp,
                                )),
                          ],
                        )
                      ],
                    ),
                  );
                }),
          ),
        ));
  }
}

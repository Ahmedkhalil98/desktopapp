import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomNavigationItems extends StatefulWidget {
  final String path;
  final String title;
  final VoidCallback press;
  const CustomNavigationItems({
    super.key,
    required this.path,
    required this.title,
    required this.press,
  });
  @override
  State<CustomNavigationItems> createState() => _CustomNavigationItemsState();
}

class _CustomNavigationItemsState extends State<CustomNavigationItems> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.press,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              widget.path,
              width: 35,
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              widget.title,
            )
          ],
        ),
      ),
    );
  }
}

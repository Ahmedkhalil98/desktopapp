
import 'package:flutter/material.dart';

class CustomNavigationItems extends StatelessWidget {
  final String path;
  final String title;
  final CallbackAction;
  const CustomNavigationItems(
      {super.key,
      required this.path,
      required this.title, this.CallbackAction,});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            path,
            width: 35,
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            title,
          )
        ],
      ),
    );
  }
}

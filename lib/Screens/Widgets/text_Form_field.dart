import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyTextFormField extends StatelessWidget {
  String? hint;
  Icon? icon;
  MyTextFormField({super.key, this.hint , this.icon});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      //controller: controller,
      // maxLines: maxLine,
      style: Theme.of(context).textTheme.bodySmall,
      //keyboardType: typeinput,
      decoration: InputDecoration(
        suffixIcon: icon,
        hintText: hint,
        hintStyle: Theme.of(context).textTheme.bodyMedium,
        helperStyle: const TextStyle(color: Colors.red),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide: const BorderSide(width: 1, color: Colors.black)),
      ),
    );
  }
}

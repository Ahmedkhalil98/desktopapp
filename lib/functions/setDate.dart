import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class SetDateController extends GetxController {
  String formattedDate = DateFormat('yyyy-MM-dd').format(DateTime.now());

  void setDate(BuildContext context) async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2020),
      lastDate: DateTime(2070),
      builder: (context, child) {
        return Theme(
            data: Theme.of(context).copyWith(
              colorScheme: const ColorScheme.light(
                primary: Colors.blue,
                onPrimary: Colors.black,
                onSurface: Colors.black,
              ),
              primaryColor: Colors.black,
            ),
            child: child!);
      },
    );
    if (pickedDate != null) {
      print(pickedDate);
      formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
      print(formattedDate);

      update();
    } else {
      print("Date is not selected");
    }
  }
}

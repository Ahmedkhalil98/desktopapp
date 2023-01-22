import 'package:desktopapp/functions/scroll.dart';
import 'package:desktopapp/Screens/main_page_screens/MyHomePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
//import 'package:get/get.dart';
// GetMaterialApp

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) {
        return MaterialApp(
          //hallo
          scrollBehavior: MyCustomScrollBehavior(),
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: const MyHomePage(),
        );
      },
    );
  }
}

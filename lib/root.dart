import 'package:desktopapp/Screens/import_export_screens/import_export_main_page.dart';
import 'package:desktopapp/Screens/main_screens/MyHomePage.dart';
import 'package:desktopapp/Screens/profits_Screens/profits_page.dart';
import 'package:desktopapp/functions/scroll.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) {
        return GetMaterialApp(
          scrollBehavior: MyCustomScrollBehavior(),
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          initialRoute: '/',
          getPages: [
            // add by Ahmed
            GetPage(name: "/", page: () => MyHomePage()),
            GetPage(name: "settings", page: () => MyHomePage()),

            GetPage(name: "/profits", page: () => const ProfitsPage()),
            GetPage(name: "/import", page: () => EmportExportScreen()),
            // end
          ],
        );
      },
    );
  }
}

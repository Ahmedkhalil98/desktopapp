import 'package:desktopapp/Controllers/myHomePage_Controllers.dart';
import 'package:desktopapp/Screens/import_export_screens/add_class.dart';
import 'package:desktopapp/Screens/import_export_screens/imp_search_add_button.dart';
import 'package:desktopapp/Screens/import_export_screens/search_class.dart';
import 'package:desktopapp/Screens/import_export_screens/imp_header_tab_widget.dart';
import 'package:desktopapp/Screens/import_export_screens/show_import_export_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class EmportExportScreen extends StatelessWidget {
  EmportExportScreen({super.key});
  final homeController = Get.put(MyHomePageController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          //! => main section for show data table
          Expanded(
              flex: 6,
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                      color: Colors.black,
                    ),
                    borderRadius: BorderRadius.circular(10)),
                child: ShowImportExportData(),
              )),
          //! => right section for search
          Expanded(
            flex: 2,
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                    color: Colors.black,
                  ),
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //! Tab Bar => Switch between Import and Export :
                  ImpTabWidgt(),
                  SizedBox(
                    height: 25.h,
                  ),
                  //! Search and Add option Button :
                  ImpOptionsButton(),
                  SizedBox(
                    height: 5.h,
                  ),
                  Obx(() => IndexedStack(
                        index: homeController.indexOfheader.value,
                        children: const [
                          //! Search :
                          SearchButtonClass(),
                          //! Add :
                          AddButtonClass(),
                        ],
                      ))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

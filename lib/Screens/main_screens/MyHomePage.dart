import 'package:desktopapp/Controllers/myHomePage_Controllers.dart';
import 'package:desktopapp/Screens/main_screens/header_section/delevery_list_screen.dart';
import 'package:desktopapp/Screens/main_screens/header_section/table_list_screen.dart';
import 'package:desktopapp/Screens/main_screens/right_Section_widgets/Accounts_section.dart';
import 'package:desktopapp/Screens/main_screens/right_Section_widgets/boutton_section.dart';
import 'package:desktopapp/Screens/main_screens/right_Section_widgets/groub_button.dart';
import 'package:desktopapp/Screens/main_screens/right_Section_widgets/invoice_data_widget.dart';
import 'package:desktopapp/Screens/main_screens/right_Section_widgets/tab_widget.dart';
import 'package:desktopapp/Screens/main_screens/display_food_list.dart';
import 'package:desktopapp/Screens/main_screens/header_section/togo_list_screen.dart';
import 'package:desktopapp/Screens/main_screens/menu_list.dart';
import 'package:desktopapp/Screens/navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  final homeController = Get.put(MyHomePageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        //? Home Screen Start :
        children: [
          //! => Left Section :
          Expanded(
            flex: 4,
            child: Container(
              padding: const EdgeInsets.all(5),
              margin: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                    color: Colors.black,
                  ),
                  borderRadius: BorderRadius.circular(10)),
              child: Stack(
                children: [
                  Column(
                    children: [
                      //! => Header =>  will be Changed later :
                      Expanded(
                          flex: 1,
                          // TODO: index stack for change screens => we can change it, if you have another idea :
                          child: Obx(
                            () {
                              return IndexedStack(
                                index: homeController.indexOfheader.value,
                                children: const [
                                  //! Display Table Screen for first index :
                                  TableListScreen(),
                                  DeleveryListScreen(),
                                  TogoListScreen()
                                ],
                              );
                            },
                          )),
                      //! => Food Menu List :
                      const MenuListScreen(
                        image: "assets/meals_icon.png",
                        title: 'Meals',
                      ),
                      //! => Display Foods Class :
                      const FoodDisplayScreen(
                        image: "assets/fruits_icon.png",
                        price: 10,
                        title: 'Fruits',
                      ),
                    ],
                  ),
                  //! => Custom Navigation Bar :
                  const CustomNavigationBar(),
                ],
              ),
            ),
          ),

          //! => Right Section :
          Expanded(
            flex: 2,
            child: Container(
              margin: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1,
                  color: Colors.black,
                ),
              ),
              child: Column(
                children: [
                  TabsButtonWidgets(),
                  SizedBox(
                    height: 14.h,
                  ),
                  const GroupButtonsWidgets(),
                  //! data Table :
                  InvoiceDataWidget(),
                  const Divider(),

                  const AccountsSection(),
                  SizedBox(
                    height: 14.h,
                  ),
                  const ButtonSection(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

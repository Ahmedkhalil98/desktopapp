import 'package:desktopapp/Screens/Widgets/Accounts_section.dart';
import 'package:desktopapp/Screens/Widgets/boutton_section.dart';
import 'package:desktopapp/Screens/Widgets/groub_button.dart';
import 'package:desktopapp/Screens/Widgets/tab_widget.dart';
import 'package:desktopapp/Screens/main_page_screens/display_food_screen.dart';
import 'package:desktopapp/Screens/main_page_screens/header_screens/delevery_list_screen.dart';
import 'package:desktopapp/Screens/main_page_screens/menu_list_screen.dart';
import 'package:desktopapp/Screens/main_page_screens/header_screens/table_list_screen.dart';
import 'package:desktopapp/Screens/navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        //? Home Screen Start :
        children: [
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
                        child: IndexedStack(
                          index: 0,
                          children: const [
                            //! Display Table Screen for first index :
                            TableListScreen(),
                            DeleveryListScreen()
                          ],
                        ),
                      ),
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
                  const TabsButtonWidgets(),
                  SizedBox(
                    height: 14.h,
                  ),
                  const GroupButtonsWidgets(),
                  //! data Table :
                  Container(
                    height: 320.h,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1),
                    ),
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
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

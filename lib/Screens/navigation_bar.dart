import 'package:desktopapp/Screens/Widgets/custom_navigationbar_items.dart';
import 'package:flutter/material.dart';

class CustomNavigationBar extends StatefulWidget {
  const CustomNavigationBar({super.key});

  @override
  State<CustomNavigationBar> createState() => _NavigationBarState();
}

class _NavigationBarState extends State<CustomNavigationBar> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: IconButton(
              icon: Icon(
                selected == false
                    ? Icons.arrow_drop_up_outlined
                    : Icons.arrow_drop_down,
                size: 50,
              ),
              onPressed: () {
                setState(() {
                  selected = !selected;
                  print(selected);
                });
              },
            ),
          ),
          AnimatedContainer(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            margin: selected == true ? const EdgeInsets.only(bottom: 5) : null,
            width: double.infinity,
            height: selected ? 70 : 0,
            alignment:
                selected ? Alignment.center : AlignmentDirectional.topCenter,
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeIn,
            decoration: BoxDecoration(
                color:
                    selected ? Color.fromARGB(255, 70, 196, 107) : Colors.blue,
                borderRadius: BorderRadius.circular(10)),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomNavigationItems(
                    path: "assets/svg_icons/cash.png",
                    title: "Cash",
                    //! Navigation Button Function :
                    press: () {
                      print("Cash");
                    },
                  ),
                  CustomNavigationItems(
                    path: "assets/svg_icons/compare.png",
                    title: "Compare",
                    press: () {},
                  ),
                  CustomNavigationItems(
                    path: "assets/svg_icons/imp.png",
                    title: "Imp/Exp",
                    press: () {},
                  ),
                  CustomNavigationItems(
                    path: "assets/svg_icons/profits.png",
                    title: "Profits",
                    press: () {},
                  ),
                  CustomNavigationItems(
                    path: "assets/svg_icons/kitchen.png",
                    title: "Kitchen",
                    press: () {},
                  ),
                  CustomNavigationItems(
                    path: "assets/svg_icons/customers.png",
                    title: "Client",
                    press: () {},
                  ),
                  CustomNavigationItems(
                    path: "assets/svg_icons/shift.png",
                    title: "Shift",
                    press: () {},
                  ),
                  CustomNavigationItems(
                    path: "assets/svg_icons/setting.png",
                    title: "Settings",
                    press: () {},
                  ),
                  CustomNavigationItems(
                    path: "assets/svg_icons/logout.png",
                    title: "LogOut",
                    press: () {},
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

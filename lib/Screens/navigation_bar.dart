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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: AnimatedContainer(
              width: double.infinity,
              height: selected ? 70 : 0,
              margin:
                  selected == true ? const EdgeInsets.only(bottom: 5) : null,
              alignment:
                  selected ? Alignment.center : AlignmentDirectional.topCenter,
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeIn,
              decoration: BoxDecoration(
                  color: selected
                      ? Color.fromARGB(255, 147, 161, 161)
                      : Colors.blue,
                  borderRadius: BorderRadius.circular(20)),
              child: SingleChildScrollView(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      CustomNavigationItems(
                        path: "assets/svg_icons/cash.png",
                        title: "Cash",
                      ),
                      CustomNavigationItems(
                        path: "assets/svg_icons/compare.png",
                        title: "Compare",
                      ),
                      CustomNavigationItems(
                        path: "assets/svg_icons/imp.png",
                        title: "Imp/Exp",
                      ),
                      CustomNavigationItems(
                        path: "assets/svg_icons/profits.png",
                        title: "Profits",
                      ),
                      CustomNavigationItems(
                        path: "assets/svg_icons/kitchen.png",
                        title: "Kitchen",
                      ),
                      CustomNavigationItems(
                        path: "assets/svg_icons/customers.png",
                        title: "Client",
                      ),
                      CustomNavigationItems(
                        path: "assets/svg_icons/shift.png",
                        title: "Shift",
                      ),
                      CustomNavigationItems(
                        path: "assets/svg_icons/setting.png",
                        title: "Settings",
                      ),
                      CustomNavigationItems(
                        path: "assets/svg_icons/logout.png",
                        title: "LogOut",
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

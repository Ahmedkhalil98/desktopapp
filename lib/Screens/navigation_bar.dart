import 'package:desktopapp/Screens/Widgets/custom_navigationbar_items.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomNavigationBar extends StatefulWidget {
  const CustomNavigationBar({super.key});

  @override
  State<CustomNavigationBar> createState() => _NavigationBarState();
}

class _NavigationBarState extends State<CustomNavigationBar>
    with SingleTickerProviderStateMixin {
  bool selected = false;
  late Animation<double> animation;
  late AnimationController controller;
  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    )
      ..forward()
      ..repeat(reverse: true);
    animation = Tween<double>(begin: 0.0, end: 1.0).animate(controller);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
              onTap: (() {
                setState(() {
                  selected = !selected;
                });
              }),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.greenAccent.withOpacity(.5),
                    borderRadius: BorderRadius.circular(50)),
                child: AnimatedIcon(
                  size: 15.w,
                  icon: AnimatedIcons.menu_arrow,
                  progress: animation,
                ),
              )),
          AnimatedContainer(
            padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
            margin: selected == true ? EdgeInsets.only(bottom: 5.h) : null,
            width: double.infinity,
            height: selected ? 80.h : 0,
            alignment:
                selected ? Alignment.center : AlignmentDirectional.topCenter,
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeInExpo,
            decoration: BoxDecoration(
                border: Border.all(
                  width: 2,
                  color: Colors.black,
                ),
                color:
                    selected ? Colors.greenAccent.withOpacity(1) : Colors.blue,
                borderRadius: BorderRadius.circular(10.r)),
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

import 'package:desktopapp/Screens/Widgets/custom_navigationbar_items.dart';
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
              ),
              child: Stack(
                children: [
                  Column(
                    children: [
                      //! => Header =>  will be Changed later :
                      Expanded(
                        flex: 1,
                        child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(width: 2, color: Colors.black)),
                            child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: 20,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.all(5),
                                    child: Container(
                                      width: 50,
                                      height: 55,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: index % 2 == 0
                                              ? Colors.red
                                              : Colors.green,
                                          width: 2,
                                        ),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          Image.asset(
                                            index % 2 == 0
                                                ? "assets/table_red.png"
                                                : "assets/table_green.png",
                                            width: 35,
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 10),
                                            child: Text(
                                              "${index + 1}",
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  );
                                })),
                      ),
                      //! => Food Menu :
                      Expanded(
                          flex: 2,
                          child: Container(
                            margin: EdgeInsets.symmetric(vertical: 5),
                            width: double.infinity,
                            decoration: BoxDecoration(
                                border: Border.all(
                              width: 2,
                              color: Colors.black,
                            )),
                            child: ListView.builder(
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                itemCount: 20,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 5),
                                    child: Container(
                                      width: 100,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              width: 2, color: Colors.black),
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: Colors.blue[100]),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Image.asset(
                                            "assets/meals_icon.png",
                                            width: 60,
                                          ),
                                          const Padding(
                                            padding:
                                                EdgeInsets.only(top: 5.0),
                                            child: Text(
                                              "Meals",
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  );
                                }),
                          )),
                      //! => Display Foods :
                      Expanded(
                          flex: 7,
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            width: double.infinity,
                            decoration: BoxDecoration(
                                border: Border.all(
                              width: 2,
                              color: Colors.black,
                            )),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: GridView.builder(
                                  itemCount: 50,
                                  gridDelegate:
                                      const SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisSpacing: 20,
                                          mainAxisSpacing: 30,
                                          crossAxisCount: 6),
                                  itemBuilder: (context, index) {
                                    return Container(
                                      width: 75,
                                      height: 75,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 2, color: Colors.black),
                                        borderRadius: BorderRadius.circular(20),
                                        color: Color(0xff008b8b),
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Image.asset(
                                            "assets/fruits_icon.png",
                                            width: 60,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Text(
                                                "name",
                                              ),
                                              Text(
                                                "10\$",
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    );
                                  }),
                            ),
                          )),
                    ],
                  ),
                  //! => Custom Navigation Bar :
                  CustomNavigationBar(),
                ],
              ),
            ),
          ),
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
                children: const [],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

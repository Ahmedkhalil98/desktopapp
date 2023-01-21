import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TableListScreen extends StatelessWidget {
  const TableListScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(width: 1, color: Colors.black)),
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
                      color: index % 2 == 0 ? Colors.red : Colors.green,
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
                        padding: const EdgeInsets.only(top: 10),
                        child: Text(
                          "${index + 1}",
                        ),
                      )
                    ],
                  ),
                ),
              );
            }));
  }
}

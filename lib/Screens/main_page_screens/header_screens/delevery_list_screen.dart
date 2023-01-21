import 'package:flutter/material.dart';

class DeleveryListScreen extends StatelessWidget {
  const DeleveryListScreen({super.key});

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
              return Container(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                height: 55,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.orange,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children:const [
                    Icon(Icons.car_crash_outlined),
                    Icon(Icons.timer_outlined),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text(
                        "20:20",
                      ),
                    )
                  ],
                ),
              );
            }));
  }
}

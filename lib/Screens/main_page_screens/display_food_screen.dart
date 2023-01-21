import 'package:flutter/material.dart';

class FoodDisplayScreen extends StatelessWidget {
  final String image;
  final String title;
  final double price;
  const FoodDisplayScreen({
    super.key,
    required this.image,
    required this.title,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 7,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                width: 1,
                color: Colors.black,
              )),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: GridView.builder(
                itemCount: 50,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 30,
                    crossAxisCount: 6),
                itemBuilder: (context, index) {
                  return Container(
                    width: 75,
                    height: 75,
                    decoration: BoxDecoration(
                      border: Border.all(width: 2, color: Colors.black),
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xff008b8b),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          image,
                          width: 60,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              title,
                            ),
                            Text(
                              "$price\$",
                            ),
                          ],
                        )
                      ],
                    ),
                  );
                }),
          ),
        ));
  }
}

import 'package:flutter/material.dart';

class MenuListScreen extends StatelessWidget {
  final String title;
  final String image;
  
  const MenuListScreen({
    super.key, required this.title, required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
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
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Container(
                    width: 100,
                    decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Colors.black),
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blue[100]),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          image,
                          width: 60,
                        ),
                         Padding(
                          padding: EdgeInsets.only(top: 5.0),
                          child: Text(
                            title,
                          ),
                        )
                      ],
                    ),
                  ),
                );
              }),
        ));
  }
}

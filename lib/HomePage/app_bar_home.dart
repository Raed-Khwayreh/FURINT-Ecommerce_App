// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppBarDesign extends StatelessWidget implements PreferredSizeWidget {
  const AppBarDesign({super.key});

  @override
  Size get preferredSize => Size(0, 100);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.white,
          statusBarIconBrightness: Brightness.dark),
      backgroundColor: Colors.white,
      elevation: 0,
      toolbarHeight: 100,
      title: Container(
        height: 70,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 242, 242, 242),
            borderRadius: BorderRadius.circular(15)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 8,
            ),
            Icon(
              Icons.search,
              color: Color.fromARGB(255, 210, 210, 210),
              size: 32,
            ),
            SizedBox(
              width: 15,
            ),
            Text(
              'Search',
              style: TextStyle(
                color: Color.fromARGB(255, 210, 210, 210),
              ),
            )
          ],
        ),
      ),
      actions: [
        Container(
            margin: EdgeInsets.fromLTRB(0, 15, 15, 15),
            padding: EdgeInsets.symmetric(horizontal: 23),
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 242, 242, 242),
                borderRadius: BorderRadius.circular(15)),
            child: Image.asset(
              'images/filtter.png',
              width: 22,
            )),
      ],
    );
  }
}

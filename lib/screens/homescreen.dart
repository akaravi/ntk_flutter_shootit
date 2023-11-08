import 'package:flutter/material.dart';
import 'package:shootto/constant.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Blue,
        title: Row(
          children: [
            Image.asset(
              'assets/images/share.webp',
              width: 40,
              height: 40,
              alignment: Alignment.topLeft,
            ),
            Spacer(),
            Text(
              'ShootTo',
              style: TextStyle(
                  fontSize: 18, color: Gray1, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            Spacer(),
          ],
        ),
        iconTheme: IconThemeData(color: Color.fromARGB(255, 108, 103, 103)),
      ),
      endDrawer: Drawer(
          // backgroundColor: Colors.black,
          ),
    );
  }
}

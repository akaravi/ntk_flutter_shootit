import 'package:flutter/material.dart';
import 'package:shootto/screens/homescreen.dart';
import 'package:shootto/screens/login1.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:shootto/screens/profile.dart';
import 'package:shootto/screens/settings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // theme: ThemeData.dark(),
        debugShowCheckedModeBanner: false,
        home: Login1());
  }
}

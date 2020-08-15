import 'package:flutter/material.dart';
import 'package:food_base/screens/HomeScreen.dart';
import 'package:food_base/screens/Splash.dart';

void main() {
  runApp(MaterialApp(
    title: "Food Base - Food Delivery",
    debugShowCheckedModeBanner: false,
    initialRoute: "/",
    routes: {
      "/": (context) => Splash(),
      "/home": (context) => HomeScreen(),
    },
    theme: ThemeData(
      scaffoldBackgroundColor: Colors.grey[50],
      primaryColor: Colors.deepOrangeAccent,
    ),
  ));
}


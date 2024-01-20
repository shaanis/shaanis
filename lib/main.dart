import 'package:canteen_management/cart.dart';
import 'package:canteen_management/login.dart';
import 'package:canteen_management/maintance.dart';
import 'package:canteen_management/menu.dart';
import 'package:canteen_management/signup.dart';
import 'package:canteen_management/splash.dart';
import 'package:canteen_management/uporin.dart';
import 'package:flutter/material.dart';

import 'navbar/navigbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: navigation()
      //Splash(),

    );
  }
}

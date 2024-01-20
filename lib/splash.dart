import 'dart:async';

import 'package:canteen_management/navbar/navigbar.dart';
import 'package:canteen_management/uporin.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 4), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => navigation(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment:
            MainAxisAlignment.end, // Aligns children to the bottom
        children: [
          Expanded(
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                  Color(0xff58e517),
                  Color(0xff9ff278),
                ], begin: Alignment.topLeft, end: Alignment.bottomLeft)),
                child: Center(
                  child: Text(
                    "Eatmore",
                    style: GoogleFonts.getFont('Sriracha',
                        textStyle: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.w200,
                            color: Colors.white)),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

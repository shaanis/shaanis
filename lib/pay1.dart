import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class payPage extends StatefulWidget {
  const payPage({super.key});

  @override
  State<payPage> createState() => _payPageState();
}

class _payPageState extends State<payPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
     body: Center(
       child: Lottie.network('https://lottiefiles.com/animations/success-light-wuyKt2j2c9',
        animate: true ),
     ),
    );
  }
}

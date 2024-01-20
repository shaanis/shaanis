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
    final height= MediaQuery.of(context).size.height;
    final width= MediaQuery.of(context).size.width;
    return  Scaffold(backgroundColor: Colors.orange,
      appBar: AppBar(),
     body: Column(mainAxisAlignment: MainAxisAlignment.center,
       children: [
         Center(
           child: Lottie.network("https://lottie.host/7d3f042a-d234-4c4a-8582-74bc0efa6da1/paQkCLgaxs.json",height: 150,width: 150),
         ),
       ],
     )
    );
  }
}

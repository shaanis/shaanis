import 'package:canteen_management/navbar/navigbar.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'menu.dart';

class DonePage extends StatelessWidget {
  const DonePage({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: height*.35,),
            Center(
              child: Image.asset(
                "assets/images/mark22.png",color: Color(0xff53e510),
                height: 150,
                width: 150,
              ),
            ),
            Text(
              "Thank You!",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: height*.037),
            ),
            SizedBox(height:height*.015 ,),
            Text(
              """Thank you for join with us to help
                 poor peoples!""",
              style: TextStyle(
                color: Color(0xff515b67),
              ),
            ),
            SizedBox(height: height*.25,),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>navigation()));
            },
              child: Text("Go Home"),
              style: ElevatedButton.styleFrom(elevation: 0,
                minimumSize: Size(width*.9, height*.06),
                shape: RoundedRectangleBorder(
                    borderRadius:BorderRadius.circular(30)),
                backgroundColor: Color(0xff53e510),),),
          ],
        ),
      ),
    );
  }
}

import 'package:canteen_management/DonationDone.dart';
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
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: height*.365,),
          Container(
            child: Lottie.network(
                "https://lottie.host/2ba37de2-575a-4f91-b678-e3643dcaeb55/jQl6k0Cxxv.json",
                height: 150,
                width: 150),
          ),
          SizedBox(height: 30),
          Text(
            "Your Token is Ready!",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
          SizedBox(
            height: height * .05,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: height * .039,
                width: width * .18,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xffcaffb3)),
                child: Center(
                    child: Text(
                  "₹50",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                height: height * .039,
                width: width * .18,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xffcaffb3)),
                child: Center(
                  child: Text(
                    "₹100",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                height: height * .039,
                width: width * .18,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xffcaffb3)),
                child: Center(
                  child: Text(
                    "₹200",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                height: height * .039,
                width: width * .18,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xffcaffb3)),
                child: Center(
                    child: Text(
                  "₹500",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
              ),
            ],
          ),
          SizedBox(height: 40,),
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>DonePage()));
          },
            child: Text("Donate"),
            style: ElevatedButton.styleFrom(elevation: 0,
              minimumSize: Size(120, 35),
              shape: RoundedRectangleBorder(
                  borderRadius:BorderRadius.circular(10)),
              backgroundColor: Color(0xff53e510),),),
          SizedBox(height: height*.06,),
          ElevatedButton(onPressed: (){}, child: Text("Go Home"),
            style: ElevatedButton.styleFrom(elevation: 0,
              minimumSize: Size(width*.9, height*.06),
              shape: RoundedRectangleBorder(
                  borderRadius:BorderRadius.circular(30)),
              backgroundColor: Color(0xff53e510),),),
        ],
      ),
    );
  }
}

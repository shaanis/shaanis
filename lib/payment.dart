import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.white,
      body: Container(padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
              height: 80,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0,2),
                  blurRadius: 1,
                   color: Color(0xffb2b2b3)
                   // spreadRadius:
                  )
                ],
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(10),
                color: Color(0xffdffcd2),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.clean_hands_outlined,
                    color: Color(0xff53e510),),
                    SizedBox(width: 20,),
                    Text('Cash Payment',style: TextStyle(
                      fontWeight: FontWeight.w400
                    ),),
                    Spacer(),
                    Icon(Icons.circle_outlined,color: Color(0xff53e510),)
                  ],
                ),
              ),
            ),
            SizedBox(height: 25,),
            Container(
              height: 80,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0,2),
                      blurRadius: 1,
                      color: Color(0xffb2b2b3)
                    // spreadRadius:
                  )
                ],
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(10),
                color: Color(0xffdffcd2),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/gpay.png',height: 25,width: 30,),
                    SizedBox(width: 20,),
                    Text('Google pay',style: TextStyle(
                        fontWeight: FontWeight.w400
                    ),),
                    Spacer(),
                    Image.asset('assets/images/icons8.png',height: 20,width: 25,),
                  ],
                ),
              ),
            ),
            SizedBox(height: 25,),
            Container(
              height: 80,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(

                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(10),
                color: Color(0xffdffcd2),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Add New',style: TextStyle(
                        fontWeight: FontWeight.w400,
                      color: Color(0xff53e510)
                    ),),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 80,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Subtotal",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "₹120.00",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 8.0, top: 8, bottom: 8, right: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Discount",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "₹00.00",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Color(0xff53e510)),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding:
              const EdgeInsets.only(left: 8.0, top: 8, bottom: 8, right: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "₹120.00",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  elevation: 0,
                  backgroundColor: Color(0xff53e510),
                  shape:  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)
                  ),
              ),
              onPressed: () {
               // Navigator.push(context, MaterialPageRoute(builder: (context)=>PaymentPage()));
              },
              child: Text("Confirm&Pay"),
            ),
          ],
        ),
      ),
    );
  }
}

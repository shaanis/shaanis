import 'package:canteen_management/pay1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  int value = 1;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            CupertinoIcons.back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 160, top: 20),
            child: Text(
              'Payment',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                  color: Colors.black),
            ),
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: Container(
        height: height,
        width: width,
        color: Colors.white,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 10, left: 8, right: 8),
              height: height * .08,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 2),
                      blurRadius: 1,
                      color: Color(0xffb2b2b3)
                      // spreadRadius:
                      )
                ],
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(10),
                color: Color(0xffdffcd2),
              ),
              child: Row(
                children: [
                  SizedBox(width: 10),
                  Icon(
                    Icons.clean_hands_outlined,
                    color: Color(0xff53e510),
                  ),
                  SizedBox(width: 10),
                  Text("Cash Payment"),
                  SizedBox(width: width*.46,),
                  Expanded(
                    child: Radio(
                      value: 1,
                      groupValue: value,
                      activeColor: Color(0xff53e510),
                      onChanged: (val) {
                        setState(() {
                          value=val!;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 10, left: 8, right: 8),
              height: height * .08,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 2),
                      blurRadius: 1,
                      color: Color(0xffb2b2b3)
                    // spreadRadius:
                  )
                ],
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(10),
                color: Color(0xffdffcd2),
              ),
              child: Row(
                children: [
                  SizedBox(width: 10),
                  Image.asset(
                    'assets/images/gpay.png',
                    height: 25,
                    width: 30,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Google pay',
                    style: TextStyle(fontWeight: FontWeight.w400),
                  ),
                  SizedBox(width: width*.46,),
                  Expanded(
                    child: Radio(
                      value: 2,
                      activeColor: Color(0xff53e510),
                      groupValue: value,
                      onChanged: (val){
                        setState(() {
                          value = val!;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
                height: height * .03),
            InkWell(
              onTap: (){},
              child: Container(
                height: height * .08,
                width: width * .96,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xffdffcd2),
                ),
                child: Center(
                  child: Text('Add New',style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Color(0xff53e510)),),
                ),
              ),
            ),
            SizedBox(height: height*.23,),
            Padding(
              padding: const EdgeInsets.all(10.0),
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


            Spacer(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(350, 45),
                elevation: 0,
                backgroundColor: Color(0xff53e510),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => payPage()));
              },
              child: Text(
                "Confirm&Pay",
                style: TextStyle(fontWeight: FontWeight.w400),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

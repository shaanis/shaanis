import 'package:canteen_management/navbar/navigbar.dart';
import 'package:canteen_management/payment.dart';
import 'package:canteen_management/token.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'fav.dart';
import 'menu.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  //quantity
  int QuantityCount = 0;
  //decrement
  void decrementQuantity() {
    setState(() {
      if(QuantityCount>0){
        QuantityCount--;
      }
    });
  }

  //increment
  void incrementQuantity() {
    setState(() {
      QuantityCount++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
        title: Padding(
          padding: const EdgeInsets.only(left: 78.0),
          child: Text(
            "Cart",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Container(
        height: height,
        width: width,
        color: Colors.white,
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 2,
                itemBuilder: (BuildContext context,int index) {
                  return Container(
                    margin: EdgeInsets.all(height * .005),
                    color: Colors.white,
                    height: height * .11,
                    child: Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          margin: EdgeInsets.all(height * .005),
                          height: height,
                          width: width * .24,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                    'assets/images/chick.jpg',
                                  ),
                                  fit: BoxFit.cover),
                              color: Colors.red,
                              borderRadius:
                                  BorderRadius.circular(height * .015)),
                        ),
                        SizedBox(
                          width: width * .01,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "Chicken Biriyani",
                              style: TextStyle(
                                fontSize: height * .015,
                                color: Color(0xff616261),
                              ),
                            ),
                            Text(
                              "₹70",
                              style: TextStyle(
                                  fontSize: height * .016,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Spacer(),
                        InkWell(
                          onTap: () {
                            incrementQuantity();
                          },
                          child: Container(
                            height: height * .02,
                            width: width * .038,
                            decoration: BoxDecoration(
                                color: Color(0xFFE7E4E4),
                                borderRadius:
                                    BorderRadius.circular(height * .006)),
                            child: Center(
                                child: Icon(Icons.add, size: height * .015)),
                          ),
                        ),
                        SizedBox(
                            width: width*.048,
                            child: Center(child: Text(QuantityCount.toString()))),
                        InkWell(
                          onTap: () {
                            decrementQuantity();
                          },
                          child: Container(
                            height: height * .02,
                            width: width * .038,
                            decoration: BoxDecoration(
                              color: Color(0xFFE7E4E4),
                              borderRadius:
                                  BorderRadius.circular(height * .006),
                            ),
                            child: Center(
                              child: Icon(Icons.remove, size: height * .015),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: width * .015,
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(bottom: 68.0, right: 5),
                          child: InkWell(
                            child: Image.asset(
                              'assets/images/cross1.png',
                              height: height * .015,
                              width: width * .04,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: height*.005,),
            Row(
              children: [
                SizedBox(width: width*.05,),
                Text("Subtotal",style: TextStyle(fontWeight: FontWeight.bold),),
                Spacer(),
                Text("₹140.00",style: TextStyle(fontWeight: FontWeight.bold),),
                SizedBox(width: width*.05,),
              ],
            ),
            SizedBox(height: height*.02,),
            Row(
              children: [
                SizedBox(width: width*.05,),
                Text("Discount",style: TextStyle(fontWeight: FontWeight.bold),),
                Spacer(),
                Text("₹00.00",style: TextStyle(fontWeight: FontWeight.bold,color: Color(0xff53e510)),),
                SizedBox(width: width*.05,),
              ],
            ),
            SizedBox(height: height*.11,),
            Row(
              children: [
                SizedBox(width: width*.05,),
                Text("Total",style: TextStyle(fontWeight: FontWeight.bold),),
                Spacer(),
                Text("₹140.00",style: TextStyle(fontWeight: FontWeight.bold),),
                SizedBox(width: width*.05,),
              ],
            ),
            SizedBox(height: height*.02,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(width*.94, height*.053),
                elevation: 0,
                backgroundColor: Color(0xff53e510),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PaymentPage()));
              },
              child: Text(
                "Confirm&Pay",
                style: TextStyle(fontWeight: FontWeight.w400),
              ),
            ),
            SizedBox(height: height*.005,),
          ],
        ),
      ),
    );
  }
}

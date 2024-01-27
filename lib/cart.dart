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
      QuantityCount--;
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
                itemCount: 2,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.all(height * .005),
                    color: Colors.white,
                    height: height * .11,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
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
                            height: 15,
                            width: 15,
                            decoration: BoxDecoration(
                                color: Color(0xFFE7E4E4),
                                borderRadius: BorderRadius.circular(5)),
                            child: Center(
                                child: Icon(Icons.add, size: height * .015)),
                          ),
                        ),
                        Text(QuantityCount.toString()),
                        InkWell(
                          onTap: () {
                            decrementQuantity();
                          },
                          child: Container(
                            height: 15,
                            width: 15,
                            decoration: BoxDecoration(
                                color: Color(0xFFE7E4E4),
                                borderRadius: BorderRadius.circular(5)),
                            child: Center(
                                child: Icon(Icons.remove, size: height * .015)),
                          ),
                        ),
                        SizedBox(
                          width: width * .015,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 68.0,right: 5),
                          child: InkWell(
                            child: Image.asset('assets/images/cross1.png',height: height*.015,width: width*.04,),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

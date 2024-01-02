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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10, right: 10),
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color: Color(0xfff1edee),
                    ),
                    child: InkWell(
                      onTap: () {},
                      child: Image.asset(
                        "assets/images/samosa1.png",
                        height: 50,
                        width: 50,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Samosa",
                        style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "₹20.00",
                        style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                    ],
                  ),
                  Spacer(),
                  Container(
                    margin: EdgeInsets.only(left: 10, right: 10),
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xfff1edee),
                    ),
                    child: IconButton(
                      onPressed: () {
                        decrementQuantity();
                      },
                      icon: Icon(
                        Icons.remove,
                        size: 14,
                        weight: 20,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                    child: Center(
                      child: Text(
                        QuantityCount.toString(),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10, right: 10),
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xfff1edee),
                    ),
                    child: IconButton(
                      onPressed: () {
                        incrementQuantity();
                      },
                      icon: Icon(
                        Icons.add,
                        size: 14,
                        weight: 20,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),

              //2
              SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10, right: 10),
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color: Color(0xfff1edee),
                    ),
                    child: InkWell(
                      onTap: () {},
                      child: Image.asset(
                        "assets/images/samosa1.png",
                        height: 50,
                        width: 50,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Samosa",
                        style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "₹20.00",
                        style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                    ],
                  ),
                  Spacer(),
                  Container(
                    margin: EdgeInsets.only(left: 10, right: 10),
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xfff1edee),
                    ),
                    child: IconButton(
                      onPressed: () {
                        decrementQuantity();
                      },
                      icon: Icon(
                        Icons.remove,
                        size: 14,
                        weight: 20,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(
                      width: 20,
                      child: Center(child: Text(QuantityCount.toString()))),
                  Container(
                    margin: EdgeInsets.only(left: 10, right: 10),
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xfff1edee),
                    ),
                    child: IconButton(
                      onPressed: () {
                        incrementQuantity();
                      },
                      icon: Icon(
                        Icons.add,
                        size: 14,
                        weight: 20,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10, right: 10),
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color: Color(0xfff1edee),
                    ),
                    child: InkWell(
                      onTap: () {},
                      child: Image.asset(
                        "assets/images/samosa1.png",
                        height: 50,
                        width: 50,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Samosa",
                        style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "₹20.00",
                        style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                    ],
                  ),
                  Spacer(),
                  Container(
                    margin: EdgeInsets.only(left: 10, right: 10),
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xfff1edee),
                    ),
                    child: IconButton(
                      onPressed: () {
                        decrementQuantity();
                      },
                      icon: Icon(
                        Icons.remove,
                        size: 14,
                        weight: 20,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(
                      width: 20,
                      child: Center(child: Text(QuantityCount.toString()))),
                  Container(
                    margin: EdgeInsets.only(left: 10, right: 10),
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xfff1edee),
                    ),
                    child: IconButton(
                      onPressed: () {
                        incrementQuantity();
                      },
                      icon: Icon(
                        Icons.add,
                        size: 14,
                        weight: 20,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
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
                    minimumSize: Size(350, 48)
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>PaymentPage()));
                },
                child: Text("Proceed to Buy"),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        height: 70,
        width: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          MenuPage(),
                      transitionsBuilder:
                          (context, animation, secondaryAnimation, child) {
                        var begin = Offset(1, 0);
                        var end = Offset.zero;
                        var curve = Curves.easeInOut;

                        var tween = Tween(begin: begin, end: end).chain(
                          CurveTween(curve: curve),
                        );
                        return SlideTransition(
                          position: animation.drive(tween),
                          child: child,
                        );
                      },
                    ),
                  );
                },
                icon: Icon(CupertinoIcons.home)),
            IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          TokenPage(),
                      transitionsBuilder:
                          (context, animation, secondaryAnimation, child) {
                        var begin = Offset(1, 0);
                        var end = Offset.zero;
                        var curve = Curves.easeInOut;

                        var tween = Tween(begin: begin, end: end).chain(
                          CurveTween(curve: curve),
                        );
                        return SlideTransition(
                          position: animation.drive(tween),
                          child: child,
                        );
                      },
                    ),
                  );
                },
                icon: Icon(CupertinoIcons.book)),
            IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          CartPage(),
                      transitionsBuilder:
                          (context, animation, secondaryAnimation, child) {
                        var begin = Offset(1, 0);
                        var end = Offset.zero;
                        var curve = Curves.easeInOut;

                        var tween = Tween(begin: begin, end: end).chain(
                          CurveTween(curve: curve),
                        );
                        return SlideTransition(
                          position: animation.drive(tween),
                          child: child,
                        );
                      },
                    ),
                  );
                },
                icon: Icon(CupertinoIcons.bag)),
            IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          Favorite(),
                      transitionsBuilder:
                          (context, animation, secondaryAnimation, child) {
                        var begin = Offset(1, 0);
                        var end = Offset.zero;
                        var curve = Curves.easeInOut;

                        var tween = Tween(begin: begin, end: end).chain(
                          CurveTween(curve: curve),
                        );
                        return SlideTransition(
                          position: animation.drive(tween),
                          child: child,
                        );
                      },
                    ),
                  );
                },
                icon: Icon(Icons.favorite_border_outlined))
          ],
        ),
      ),
    );
  }
}

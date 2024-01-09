import 'package:canteen_management/cart.dart';
import 'package:canteen_management/fav.dart';
import 'package:canteen_management/profile.dart';
import 'package:canteen_management/token.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'Widgets/CategoriesWidget.dart';
import 'item detial.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height ,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: 48.0, bottom: 15, left: 15, right: 15),
                child: Row(
                  children: [
                    Text(
                      "Menu",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [
                            BoxShadow(
                              blurStyle: BlurStyle.inner,
                              color: Color(0xffdadce7),
                              blurRadius: 1,
                              spreadRadius: 0,
                              offset: Offset(0, 4),
                            )
                          ]),
                      child: CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.grey,
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => profile()));
                            },
                            child: Image.asset("assets/images/ic_launcher.png",
                                width: 28, height: 28),
                          )),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0, left: 5, right: 5),
                child: Container(
                  padding: EdgeInsets.only(top: 30),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        Color(0xffe6fcdc),
                        Color(0xfff5fdf2),
                      ], begin: Alignment.topLeft, end: Alignment.bottomLeft),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15))),
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.start,
                    //crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CategoriesWidget(),
                    ],
                  ),
                ),
              ),
               Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30.0, left: 10),
                      child: Text(
                        "Our Menu",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              Padding(
                padding: const EdgeInsets.only(top: 15,left: 10,right: 10),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      InkWell(onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>ItemDetail()));
                      },
                        child: Container(
                          margin: EdgeInsets.only(right: 25),
                          color: Colors.white,
                          //margin: EdgeInsets.all(10),
                          height: 100,width: 75,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 70,width: 70,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image:  AssetImage('assets/images/samosa1.png',),
                                    fit: BoxFit.cover,
                                  ),

                                ),
                              ),
                              SizedBox(height: 5,),
                              Center(child: Text('Samosa'))
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ItemDetail()));
                        },
                        child: Container(margin: EdgeInsets.only(right: 25),
                          color: Colors.white,
                          //margin: EdgeInsets.all(10),
                          height: 100,width: 75,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 70,width: 70,
                                decoration: BoxDecoration(color: Colors.black,
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image:  AssetImage('assets/images/ullivad1.jpg',),
                                    fit: BoxFit.cover,
                                  ),

                                ),
                              ),
                              SizedBox(height: 5,),
                              Center(child: Text('Ullivada'))
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ItemDetail()));
                        },
                        child: Container(
                          margin: EdgeInsets.only(right: 25),
                          color: Colors.white,
                          //margin: EdgeInsets.all(10),
                          height: 100,width: 75,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                height: 70,width: 70,
                                decoration: BoxDecoration(color: Colors.black,
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image:  AssetImage('assets/images/biriyani5.png',),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(height: 5,),
                              Center(child: Text('Samosa'))
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap:(){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ItemDetail()));
                        },
                        child: Container(
                          margin: EdgeInsets.only(right: 25),
                          color: Colors.white,
                          //margin: EdgeInsets.all(10),
                          height: 100,width: 75,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 70,width: 70,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image:  AssetImage('assets/images/biriyani5.png',),
                                    fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              SizedBox(height: 5,),
                              Center(child: Text('Samosa'))
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 13.0, left: 10, bottom: 15),
                    child: Text(
                      "Popular",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Spacer(),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    //1st
                    Container(
                      padding: EdgeInsets.only(top: 1),
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      margin: EdgeInsets.all(10),
                      width: 200,
                      height: 170,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>ItemDetail()));
                            },
                            child: Image.asset(
                              "assets/images/chick.jpg",
                              width: 200,
                              height: 120,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 10, top: 5, bottom: 4),
                                child: Text(
                                  "Chikken biriyani",
                                  style: TextStyle(
                                      fontSize: 10, fontWeight: FontWeight.bold),
                                ),
                              ),
                              Spacer(),
                              Padding(
                                padding: const EdgeInsets.only(right: 15, top: 5),
                                child: Text(
                                  "₹70",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 10),
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10, bottom: 10),
                            child: RatingBar.builder(
                                itemSize: 12,
                                initialRating: 3,
                                minRating: 0,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemBuilder: (context, _) => Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                onRatingUpdate: (rating) {}),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),

                    //2nd container

                    Container(
                      padding: EdgeInsets.only(top: 1),
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      margin: EdgeInsets.all(10),
                      width: 200,
                      height: 170,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>ItemDetail()));
                            },
                            child: Image.asset(
                              "assets/images/ghee.jpg",
                              width: 200,
                              height: 120,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 11, top: 5, bottom: 4),
                                child: Text(
                                  "Ghee Rice",
                                  style: TextStyle(
                                      fontSize: 10, fontWeight: FontWeight.bold),
                                ),
                              ),
                              Spacer(),
                              Padding(
                                padding: const EdgeInsets.only(right: 15, top: 5),
                                child: Text(
                                  "₹50",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 10),
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10, bottom: 10),
                            child: RatingBar.builder(
                                itemSize: 12,
                                initialRating: 3,
                                minRating: 0,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemBuilder: (context, _) => Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                onRatingUpdate: (rating) {}),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),

                    //3rd container

                    Container(
                      padding: EdgeInsets.only(top: 1),
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      margin: EdgeInsets.all(10),
                      width: 200,
                      height: 170,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>ItemDetail()));
                            },
                            child: Image.asset(
                              "assets/images/verumchor1.jpg",
                              width: 200,
                              height: 120,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 10, top: 5, bottom: 4),
                                child: Text(
                                  "Rice",
                                  style: TextStyle(
                                      fontSize: 10, fontWeight: FontWeight.bold),
                                ),
                              ),
                              Spacer(),
                              Padding(
                                padding: const EdgeInsets.only(right: 15, top: 5),
                                child: Text(
                                  "₹50",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 10),
                                ),
                              )
                            ],
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left: 10, bottom: 10),
                            child: RatingBar.builder(
                                itemSize: 12,
                                initialRating: 3,
                                minRating: 0,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemBuilder: (context, _) => Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                onRatingUpdate: (rating) {}),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}

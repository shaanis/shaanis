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
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Container(
          margin: EdgeInsets.only(left: 5),
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
                      style: TextStyle(fontSize: height*.029, fontWeight: FontWeight.bold),
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
               SizedBox(height: height*.035,),
               Row(
                 crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     SizedBox(width: width*.023,),
                    Text(
                      "Our Menu",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              SizedBox(height: height*.019,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    InkWell(
                      onTap:()
                  {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ItemDetail()));},
                      child: Container(
                        margin: EdgeInsets.only(right: 25),
                        color: Colors.white,

                        height: height*0.18,width: width*.2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: height*.089,//width: width*.9,
                              decoration: BoxDecoration(color: Colors.orange,
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
                        height: height*0.18,width: width*.2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: height*.089,
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
                      child: Container(margin: EdgeInsets.only(right: 25),
                        color: Colors.white,
                        //margin: EdgeInsets.all(10),
                        height: height*0.18,width: width*.2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: height*.089,
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
                      child: Container(margin: EdgeInsets.only(right: 25),
                        color: Colors.white,
                        //margin: EdgeInsets.all(10),
                        height: height*0.18,width: width*.2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: height*.089,
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
                      child: Container(margin: EdgeInsets.only(right: 25),
                        color: Colors.white,
                        //margin: EdgeInsets.all(10),
                        height: height*0.18,width: width*.2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: height*.089,
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

                  ],
                ),
              ),
              SizedBox(
                height: height*.037,
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
                ],
              ),
              SizedBox(
                height: height*.01,
              ),
              SingleChildScrollView(
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
                        height: 150,width: 150,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          //mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 100,width: 150,
                              decoration: BoxDecoration(color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                  image:  AssetImage('assets/images/biriyani5.png',),
                                  fit: BoxFit.cover,
                                ),

                              ),
                            ),
                            SizedBox(height: 5,),
                            Row(
                              children: [
                                SizedBox(width: 4,),
                                Text('Chicken Biriyani',style: TextStyle(
                                  fontSize: 10,fontWeight: FontWeight.w500
                                ),),
                                SizedBox(width: MediaQuery.of(context).size.width*0.12,),
                                Text("₹70",style: TextStyle(
                                    fontSize: 13,fontWeight: FontWeight.w500
                                ),),

                              ],
                            ),
                        SizedBox(height: 5,),
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: RatingBar.builder(
                              itemSize: 11,
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
                    ),
                    InkWell(onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ItemDetail()));
                    },
                      child: Container(
                        margin: EdgeInsets.only(right: 25),
                        color: Colors.white,
                        //margin: EdgeInsets.all(10),
                        height: 150,width: 150,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          //mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 100,width: 150,
                              decoration: BoxDecoration(color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                  image:  AssetImage('assets/images/biriyani5.png',),
                                  fit: BoxFit.cover,
                                ),

                              ),
                            ),
                            SizedBox(height: 5,),
                            Row(
                              children: [
                                SizedBox(width: 4,),
                                Text('Chicken Biriyani',style: TextStyle(
                                    fontSize: 10,fontWeight: FontWeight.w500
                                ),),
                                SizedBox(width: MediaQuery.of(context).size.width*0.12,),
                                Text("₹70",style: TextStyle(
                                    fontSize: 13,fontWeight: FontWeight.w500
                                ),),

                              ],
                            ),
                            SizedBox(height: 5,),
                            Padding(
                              padding: const EdgeInsets.only(left: 5.0),
                              child: RatingBar.builder(
                                  itemSize: 11,
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
                    ),
                    InkWell(onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ItemDetail()));
                    },
                      child: Container(
                        margin: EdgeInsets.only(right: 25),
                        color: Colors.white,
                        //margin: EdgeInsets.all(10),
                        height: 150,width: 150,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          //mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 100,width: 150,
                              decoration: BoxDecoration(color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                  image:  AssetImage('assets/images/biriyani5.png',),
                                  fit: BoxFit.cover,
                                ),

                              ),
                            ),
                            SizedBox(height: 5,),
                            Row(
                              children: [
                                SizedBox(width: 4,),
                                Text('Chicken Biriyani',style: TextStyle(
                                    fontSize: 10,fontWeight: FontWeight.w500
                                ),),
                                SizedBox(width: MediaQuery.of(context).size.width*0.12,),
                                Text("₹70",style: TextStyle(
                                    fontSize: 13,fontWeight: FontWeight.w500
                                ),),

                              ],
                            ),
                            SizedBox(height: 5,),
                            Padding(
                              padding: const EdgeInsets.only(left: 5.0),
                              child: RatingBar.builder(
                                  itemSize: 11,
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
                    ),
                    InkWell(onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ItemDetail()));
                    },
                      child: Container(
                        margin: EdgeInsets.only(right: 25),
                        color: Colors.white,
                        //margin: EdgeInsets.all(10),
                        height: 150,width: 150,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          //mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 100,width: 150,
                              decoration: BoxDecoration(color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                  image:  AssetImage('assets/images/biriyani5.png',),
                                  fit: BoxFit.cover,
                                ),

                              ),
                            ),
                            SizedBox(height: 5,),
                            Row(
                              children: [
                                SizedBox(width: 4,),
                                Text('Chicken Biriyani',style: TextStyle(
                                    fontSize: 10,fontWeight: FontWeight.w500
                                ),),
                                SizedBox(width: MediaQuery.of(context).size.width*0.12,),
                                Text("₹70",style: TextStyle(
                                    fontSize: 13,fontWeight: FontWeight.w500
                                ),),

                              ],
                            ),
                            SizedBox(height: 5,),
                            Padding(
                              padding: const EdgeInsets.only(left: 5.0),
                              child: RatingBar.builder(
                                  itemSize: 11,
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
                    ),
                  ],
                )
              ),

            ],
          ),
        ),
      ),
    );
  }
}

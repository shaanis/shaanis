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
import 'navbar/navigbar.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  List FoodMenu =[];
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: EdgeInsets.only(left: 5, right: 5),
        width: width,
        height: height * .92,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 48.0, bottom: 15, left: 15, right: 15),
              child: Row(
                children: [
                  Text(
                    "Menu",
                    style: TextStyle(
                        fontSize: height * .029, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(height * .03),
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
                        radius: height * .025,
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
                              width: width * .068, height: height * .035),
                        )),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 30),
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Color(0xffe6fcdc),
                    Color(0xfff5fdf2),
                  ], begin: Alignment.topLeft, end: Alignment.bottomLeft),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(height * .02),
                      topRight: Radius.circular(height * .02))),
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.start,
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CategoriesWidget(),
                ],
              ),
            ),
            SizedBox(
              height: height * .035,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: width * .023,
                ),
                Text(
                  "Our Menu",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: height * .019,
            ),
            Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ItemDetail()));
                        },
                        child: Container(
                          margin: EdgeInsets.only(right: 20),
                          color: Colors.white,
                          height: height * 0.18,
                          width: width * .2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: height * .089, //width: width*.9,
                                decoration: BoxDecoration(
                                  //color: Colors.orange,
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image: AssetImage(
                                      'assets/images/samosa1.png',
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: height * .008,
                              ),
                              Center(child: Text('Samosa'))
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            ),
            SizedBox(
              height: height * .03,
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
              height: height * .01,
            ),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ItemDetail()));
                      },
                      child: Container(
                        margin: EdgeInsets.only(right: width * .045),
                        color: Colors.white,
                        //margin: EdgeInsets.all(10),
                        height: height * .1, width: width * .38,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          //mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: height * .132,
                              width: width,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.circular(height * .015),
                                image: DecorationImage(
                                  image: AssetImage(
                                    'assets/images/biriyani5.png',
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: height * .005,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: width * .007,
                                ),
                                Text(
                                  'Chicken Biriyani',
                                  style: TextStyle(
                                      fontSize: height * .012,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  width: width * 0.12,
                                ),
                                Text(
                                  "₹70",
                                  style: TextStyle(
                                      fontSize: height * .016,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: height * .005,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 5.0),
                              child: RatingBar.builder(
                                  itemSize: height * .0132,
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
                  );
                },
              ),
            ),
          ],
        ),
      ),
      // bottomNavigationBar: navigation(),
    );
  }
}

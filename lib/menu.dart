import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

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
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 70,
        backgroundColor: Colors.white,
        leading: Text(""),
        title: Padding(
          padding: EdgeInsets.only(right: 100),
          child: Text(
            "Menu",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        actions: [
          Container(
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 5,
                spreadRadius: 2,
                offset: Offset(3, 30),
              )
            ]),
            child: CircleAvatar(
                radius: 20,
                backgroundColor: Colors.white,
                foregroundColor: Colors.grey,
                child: InkWell(
                  onTap: () {},
                  child: Image.asset("assets/images/ic_launcher.png",
                      width: 28, height: 28),
                )),
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8.0, left: 8, right: 8),
            child: Container(
              padding: EdgeInsets.only(top: 30),
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Color(0xffe6fcdc),
                    Color(0xfff5fdf2),
                  ], begin: Alignment.topLeft, end: Alignment.bottomLeft),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25))),
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.start,
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CategoriesWidget(),
                ],
              ),
            ),
          ),
          Container(
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 13.0, left: 10),
                  child: Text(
                    "Our Menu",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(top: 13.0, right: 10),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Show All",
                      style: TextStyle(fontSize: 12, color: Color(0xffa7a6a7)),
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: SingleChildScrollView(
              child: Row(
                //crossAxisAlignment: CrossAxisAlignment.start,
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => ItemDetail(),));
                        },
                        child: Image.asset("assets/images/Ellipse15.png"),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Samoosa",
                        style: TextStyle(fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 18,
                  ),
                  Column(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Image.asset("assets/images/Ellipse12.png"),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Paripvada",
                        style: TextStyle(fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 18,
                  ),
                  Column(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Image.asset("assets/images/Ellipse13.png"),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Bonda",
                        style: TextStyle(fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 18,
                  ),
                  Column(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Image.asset("assets/images/Ellipse14.png"),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Pazhampori",
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 13.0, left: 10),
                child: Text(
                  "Popular",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(top: 13.0, right: 10),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Show All",
                    style: TextStyle(
                      color: Color(0xffa7a6a7),
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
            ],
          ),
          /*ListView(
            scrollDirection: Axis.vertical,
            children: <Widget>[
              Container(
                width: 150,
                child: InkWell(
                  onTap: (){},
                  child: Image.asset("assets/images/Rectangle1.png"),
                ),
              )
            ],
          )*/
        ],
      ),

    );
  }
}

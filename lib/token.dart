import 'package:canteen_management/menu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'fav.dart';

class TokenPage extends StatefulWidget {
  const TokenPage({super.key});

  @override
  State<TokenPage> createState() => _TokenPageState();
}

class _TokenPageState extends State<TokenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.only(left: 78.0),
          child: Text(
            "Token",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 17, color: Colors.black),
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(15),

            //width: 350,
            height: 120,
            decoration: ShapeDecoration(
              shadows:[
                  BoxShadow(
                      color: Color(0xffb2b2b3),
                    offset:Offset(1,4),
                    spreadRadius: 1,
                    blurRadius: 3,
                     // blurStyle: BlurStyle.outer
                  )
                ] ,
              color: Color(0xffdffcd2),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusDirectional.circular(7)),
            ),
            child: Row(
              children: [
                Padding(padding: EdgeInsets.all(10)),
                Image.asset(
                  "assets/images/biri5.png",
                  width: 80,
                  height: 80,
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8,top: 30,bottom: 5),
                      child: Text(
                        "Token No : 024",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 28.0,bottom: 5),
                      child: Text("Ghee Rice",
                        style:TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold
                        ) ,),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 13.0,bottom: 20),
                      child: Text("Quantity : 01",
                        style:TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold
                        ) ,),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Text("11:44, 01 February 2024",
                      style: TextStyle(
                        color: Color(0xffb2b2b3),
                        fontSize: 10
                      ),),
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(15),

            //width: 350,
            height: 120,
            decoration: ShapeDecoration(
              shadows:[
                BoxShadow(
                  color: Color(0xffb2b2b3),
                  offset:Offset(1,4),
                  spreadRadius: 1,
                  blurRadius: 3,
                  // blurStyle: BlurStyle.outer
                )
              ] ,
              color: Color(0xffdffcd2),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusDirectional.circular(7)),
            ),
            child: Row(
              children: [
                Padding(padding: EdgeInsets.all(10)),
                Image.asset(
                  "assets/images/biriyani5.png",
                  width: 80,
                  height: 80,
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8,top: 30,bottom: 5),
                      child: Text(
                        "Token No : 025",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:3,bottom: 5),
                      child: Text("Chikken Biriyani",
                        style:TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold
                        ) ,),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 13.0,bottom: 20),
                      child: Text("Quantity : 01",
                        style:TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold
                        ) ,),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Text("11:44, 01 February 2024",
                        style: TextStyle(
                            color: Color(0xffb2b2b3),
                            fontSize: 10
                        ),),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar:
      Container(
        color: Colors.white,
        height: 70,
        width: 60,
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(onPressed: (){},
                icon: Icon(CupertinoIcons.home)),
            IconButton(onPressed: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>TokenPage()));
            },
                icon: Icon(CupertinoIcons.book)),
            IconButton(onPressed: (){
             // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MenuPage()));
            },
                icon: Icon(CupertinoIcons.bag)),
            IconButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Favorite()));
            },
                icon: Icon(Icons.favorite_border_outlined))
          ],
        ),
      ),
    );
  }
}

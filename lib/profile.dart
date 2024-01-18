import 'package:canteen_management/cart.dart';
import 'package:canteen_management/fav.dart';
import 'package:canteen_management/preorder.dart';
import 'package:canteen_management/profileEdit.dart';
import 'package:canteen_management/review.dart';
import 'package:canteen_management/token.dart';
import 'package:flutter/material.dart';

import 'alertlogout.dart';
import 'faqs.dart';
import 'notification.dart';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  String title = 'AlertDialog';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            "Profile",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, top: 15),
                  child: Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Color(0xffdffcd2),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Image.asset("assets/images/ic_launcher.png"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 22.0),
                  child: Column(
                    children: [
                      Text(
                        "Shanoof T",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        """   i am vegetarian""",
                        style:
                            TextStyle(fontSize: 12, color: Color(0xff9fa4ba)),
                      )
                    ],
                  ),
                )
              ],
            ),
            Container(
              padding: EdgeInsets.only(left: 10,right: 20,bottom: 10,top: 10),
              margin: EdgeInsets.only(
                left: 20,
                right: 20,
                top: 5,
                bottom: 10,
              ),
              width: 400,
              height: 110,
              decoration: BoxDecoration(
                  color: Color(0xffdffcd2),
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: [
                  InkWell(
                    child: Row(
                      children: [
                        CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Icon(
                              Icons.person_outline_sharp,
                              color: Color(0xfff96e3e),
                            ),
                          ),
                         SizedBox(width: 10,),
                        Text("Personal Info"),
                        Spacer(),
                        Icon(Icons.arrow_forward_ios, size: 15),
                      ],
                    ),
                    onTap:() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ProfileEdit()),
                      );
                    },
                  ),
                  SizedBox(height: 10,),
                  InkWell(
                    onTap:() {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>TokenPage()));
                  },
                    child: Row(
                      children: [
                        CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Image.asset(
                              "assets/images/tocken.png",
                              width: 17,
                              height: 17,
                              color: Color(0xff2a85f2),
                            ),
                          ),
                        SizedBox(width: 10,),
                        Text("Tokens"),
                        Spacer(),
                        Icon(Icons.arrow_forward_ios, size: 15),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 10,right: 20,bottom: 5,top: 5),
              margin: EdgeInsets.only(
                left: 20,
                right: 20,
                top: 5,
                bottom: 10,
              ),
              width: 400,
              height: 250,
              decoration: BoxDecoration(
                  color: Color(0xffdffcd2),
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: [
                  InkWell(
                    onTap:() {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>CartPage()));
                    },
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Icon(
                              Icons.shopping_bag_outlined,
                              color: Color(0xff2a85f2),
                            ),
                          ),
                        ),
                        Text("Cart"),
                        Spacer(),
                         Icon(Icons.arrow_forward_ios, size: 15),
                      ],
                    ),
                  ),
                  InkWell(
                   onTap: (){
                     Navigator.push(context, MaterialPageRoute(builder: (context)=>Favorite()));
                   },
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Icon(
                              Icons.favorite_border_outlined,
                              color: Color(0xffb23dfa),
                            ),
                          ),
                        ),
                        Text("Favorite"),
                        Spacer(),
                        Icon(Icons.arrow_forward_ios, size: 15),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>NotificationPage()));
                    },
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Icon(
                              Icons.notifications_outlined,
                              color: Color(0xfffda92b),
                            ),
                          ),
                        ),
                        Text("Notifications"),
                       Spacer(),
                        Icon(Icons.arrow_forward_ios, size: 15),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>PreOrderPage()));
                    },
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Icon(
                              Icons.border_color_outlined,
                              color: Color(0xff2a85f2),
                            ),
                          ),
                        ),
                        Text("Pre Order"),
                        Spacer(),
                        Icon(Icons.arrow_forward_ios, size: 15),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 10,right: 20,bottom: 10,top: 10),
              margin: EdgeInsets.only(
                left: 20,
                right: 20,
                top: 5,
                bottom: 10,
              ),
              width: 400,
              height: 110,
              decoration: BoxDecoration(
                  color: Color(0xffdffcd2),
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Faqs()));
                    },
                    child: Row(
                      children: [
                        CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Image.asset(
                              "assets/images/faqs.png",
                              width: 19,
                              height: 19,
                            ),
                          ),
                        SizedBox(width: 10,),
                        Text("FAQs"),
                        Spacer(),
                        Icon(Icons.arrow_forward_ios, size: 15),
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>reviewPage()));
                    },
                    child: Row(
                      children: [
                        CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Image.asset(
                              "assets/images/rate.png",
                              width: 19,
                              height: 19,
                              color: Color(0xff2a85f2),
                            ),
                          ),
                        SizedBox(width: 10,),
                        Text("Rating & Feedback"),
                        Spacer(),
                        Icon(Icons.arrow_forward_ios, size: 15),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(padding: EdgeInsets.only(left: 10,right: 20,bottom: 10,top: 10),
              margin: EdgeInsets.only(
                left: 20,
                right: 20,
                top: 5,
                bottom: 10,
              ),
              width: 400,
              height: 60,
              decoration: BoxDecoration(
                  color: Color(0xffdffcd2),
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: [
                  InkWell(
                    onTap: () async {
                      final action = await AlertDialogs.yesCancelDialog(context,'Logout?','Are you sure want to logout ?');
                    },
                    child: Row(
                      children: [
                         CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Icon(
                              Icons.logout_outlined,
                              color: Color(0xfff94959),
                            ),

                        ),
                        SizedBox(width: 10,),
                        Text("Log Out"),
                        Spacer(),
                        Icon(Icons.arrow_forward_ios, size: 15),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}

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
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
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
        //physics: NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, ),
                  child: Container(
                    width: width*.22,
                    height: height*.102,
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
                            fontWeight: FontWeight.bold, fontSize: height*.02),
                      ),
                      SizedBox(
                        height: height*.009,
                      ),
                      Text(
                        """   i am vegetarian""",
                        style:
                            TextStyle(fontSize: height*.014, color: Color(0xff9fa4ba)),
                      )
                    ],
                  ),
                )
              ],
            ),
            Container(
              padding: EdgeInsets.only(left: 10,right: 15,bottom: 10,top: 10),
              margin: EdgeInsets.only(
                left: height*.03,
                right: height*.02,
                top: height*.01,
                bottom: height*.012,
              ),
              width: width,
              height: height*.15,
              decoration: BoxDecoration(
                  color: Color(0xffdffcd2),
                  borderRadius: BorderRadius.circular(10)),
              child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Icon(
                              Icons.person_outline_sharp,
                              color: Color(0xfff96e3e),
                            ),
                          ),
                         SizedBox(width: width*.03,),
                        Text("Personal Info"),
                        Spacer(),
                        Icon(Icons.arrow_forward_ios, size: height*.021),
                      ],
                    ),
                    onTap:() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ProfileEdit()),
                      );
                    },
                  ),
                  SizedBox(height: height*.01,),
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
                              width: width*.05,
                              height: height*.05,
                              color: Color(0xff2a85f2),
                            ),
                          ),
                        SizedBox(width: width*.03),
                        Text("Tokens"),
                        Spacer(),
                        Icon(Icons.arrow_forward_ios, size: height*.021),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 10,right: 15),
              margin: EdgeInsets.only(
                left: height*.03,
                right: height*.02,
                top: height*.01,
                bottom: height*.012,
              ),
              width: width,
              height: height*.33,
              decoration: BoxDecoration(
                  color: Color(0xffdffcd2),
                  borderRadius: BorderRadius.circular(10)),
              child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                 InkWell(
                   onTap: (){
                     Navigator.push(context, MaterialPageRoute(builder: (context)=>CartPage()));
                   },
                   child: Row(
                     children: [
                       CircleAvatar(
                         backgroundColor: Colors.white,
                         child: Icon(
                           Icons.shopping_bag_outlined,
                           color: Color(0xff2a85f2),
                         ),
                       ),
                       SizedBox(width: width*.03,),
                       Text("Cart"),
                       Spacer(),
                       Icon(Icons.arrow_forward_ios, size: height*.021),
                     ],
                   ),
                 ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Favorite()));
                    },
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Icon(
                            Icons.favorite_border_outlined,
                            color: Color(0xffb23dfa),
                          ),
                        ),
                        SizedBox(width: width*.03,),
                        Text("Favorite"),
                        Spacer(),
                        Icon(Icons.arrow_forward_ios, size: height*.021),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>NotificationPage()));
                    },
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Icon(
                            Icons.notifications_outlined,
                            color: Color(0xfffda92b),
                          ),
                        ),
                        SizedBox(width: width*.03,),
                        Text("Notifications"),
                        Spacer(),
                        Icon(Icons.arrow_forward_ios, size: height*.021),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>PreOrderPage()));
                    },
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Icon(
                            Icons.border_color_outlined,
                            color: Color(0xff2a85f2),
                          ),
                        ),
                        SizedBox(width: width*.03,),
                        Text("Pre Order"),
                        Spacer(),
                        Icon(Icons.arrow_forward_ios, size: height*.021),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 10,right: 20,bottom: 10,top: 10),
              margin: EdgeInsets.only(
                left: height*.03,
                right: height*.02,
                top: height*.01,
                bottom: height*.012,
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
                        SizedBox(width: width*.03),
                        Text("FAQs"),
                        Spacer(),
                        Icon(Icons.arrow_forward_ios, size: height*.021),
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
                        SizedBox(width: width*.03),
                        Text("Rating & Feedback"),
                        Spacer(),
                        Icon(Icons.arrow_forward_ios, size: height*.021),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(padding: EdgeInsets.only(left: 10,right: 20,bottom: 10,top: 10),
              margin: EdgeInsets.only(
                left: height*.03,
                right: height*.02,
                top: height*.01,
                bottom: height*.012,
              ),
              width: width,
              height: height*.08,
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
                        SizedBox(width: width*.03),
                        Text("Log Out"),
                        Spacer(),
                        Icon(Icons.arrow_forward_ios, size: height*.021),
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

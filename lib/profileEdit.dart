import 'package:canteen_management/editingDetails.dart';
import 'package:flutter/material.dart';

class ProfileEdit extends StatefulWidget {
  const ProfileEdit({super.key});

  @override
  State<ProfileEdit> createState() => _ProfileEditState();
}

class _ProfileEditState extends State<ProfileEdit> {
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
          },
        ),
        title: Padding(
          padding: const EdgeInsets.only(left: 48.0),
          child: Text(
            "Personal Info",
            style: TextStyle(color: Colors.black,
                fontWeight: FontWeight.bold,
            fontSize: 17),
          ),
        ),
        actions: [
          TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Editing()));
              },
              child: Text(
                "Edit",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff53e510)),
              ))
        ],
      ),
      body: Column(
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
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      """   i am vegetarian""",
                      style: TextStyle(fontSize: 12, color: Color(0xff9fa4ba)),
                    )
                  ],
                ),
              )
            ],
          ),
          Container(
            margin: EdgeInsets.only(
              left: 20,
              right: 20,
              top: 25,
              bottom: 10,
            ),
            width: 400,
            height: 240,
            decoration: BoxDecoration(
                color: Color(0xffdffcd2),
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.person_outline_rounded,
                          color: Color(0xfff96e3e),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text(
                              "FULL NAME",
                              style: TextStyle(fontSize: 12),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Text(
                              "Shanoof T",
                              style: TextStyle(
                                  fontSize: 11, color: Color(0xff6a6d82)),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.mail_outlined,
                          color: Color(0xff403dfa),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      //email field
                      Column(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 8.0, right: 180),
                            child: Text(
                              "EMAIL",
                              style: TextStyle(fontSize: 12),
                            ),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5, right: 65),
                            child: Text(
                              "Shanoofshanu372@gmail.com",
                              style: TextStyle(
                                  fontSize: 11, color: Color(0xff6a6d82)),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.call,
                          color: Color(0xff369afe),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Text(
                              "PHONE NUMBER",
                              style: TextStyle(fontSize: 12),
                            ),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5, right: 30),
                            child: Text(
                              "9961628083",
                              style: TextStyle(
                                  fontSize: 11, color: Color(0xff6a6d82)),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

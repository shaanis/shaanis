import 'package:flutter/material.dart';

class Editing extends StatefulWidget {
  const Editing({super.key});

  @override
  State<Editing> createState() => _EditingState();
}

class _EditingState extends State<Editing> {
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
          padding: const EdgeInsets.only(left: 68.0),
          child: Text(
            "Edit Profile",
            style: TextStyle(color: Colors.black,fontSize: 17,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Color(0xffdffcd2),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Image.asset("assets/images/ic_launcher.png"),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              """       FULL NAME""",
              style: TextStyle(fontSize: 12),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15, right: 15, top: 10, bottom: 15),
              child: TextFormField(
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                  fillColor: Color(0xffebebec),
                  filled: true,
                  hintText: "Shanoof T" ,
                  hintStyle: TextStyle(
                    fontSize: 12,
                    color: Color(0xff6a6d82),
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              """       EMAIL""",
              style: TextStyle(fontSize: 12),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15, right: 15, top: 10, bottom: 15),
              child: TextFormField(
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                  fillColor: Color(0xffebebec),
                  filled: true,
                  hintText: "Shanoofshanu372@gmail.com",
                  hintStyle: TextStyle(
                    fontSize: 12,
                    color: Color(0xff6a6d82),
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              """        PHONE NUMBER""",
              style: TextStyle(fontSize: 12),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15, right: 15, top: 10, bottom: 15),
              child: TextFormField(
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                  fillColor: Color(0xffebebec),
                  filled: true,
                  hintText: "9961628083",
                  hintStyle: TextStyle(
                    fontSize: 12,
                    color: Color(0xff6a6d82),
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              """        BIO""",
              style: TextStyle(fontSize: 12),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15, right: 15, top: 10, bottom: 15),
              child: Container(
                width: 350,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xffebebec)),
                child: TextFormField(
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                    fillColor: Color(0xffebebec),
                    filled: true,
                    hintText: "i am vegetarian",
                    hintStyle: TextStyle(
                      fontSize: 12,
                      color: Color(0xff6a6d82),
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30 ,right: 30),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  //padding:
                  //EdgeInsets.only(left: 15, right: 15),
                  minimumSize: Size(400,48),
                  backgroundColor: Color(0xff53e510),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: Text("SAVE"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

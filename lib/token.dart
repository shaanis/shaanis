import 'package:flutter/material.dart';

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
            margin: EdgeInsets.all(10),
            width: 350,
            height: 130,
            decoration: ShapeDecoration(
              /*shadows:[
                  BoxShadow(
                      color: Colors.grey,
                    //offset:Offset(0,5),
                    spreadRadius: 4,
                    blurRadius: 5,
                      blurStyle: BlurStyle.outer
                  )
                ] ,*/
              color: Color(0xffdffcd2),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusDirectional.circular(15)),
            ),
            child: Row(
              children: [
                Padding(padding: EdgeInsets.all(10)),
                Image.asset("assets/images/3740068.jpg",
                  width: 80,
                  height: 80,
                ),],
            ),
          ),
        ],
      ),
    );
  }
}

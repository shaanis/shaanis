import 'package:canteen_management/token.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'cart.dart';
import 'menu.dart';

class Favorite extends StatefulWidget {
  const Favorite({super.key});

  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.only(left: 78.0),
          child: Text("Favorite",style: TextStyle(
            fontSize: 17,
            fontWeight:  FontWeight.bold,
            color: Colors.black
          ),),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 15,
            ),
            child: Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                color: Color(0xffdffcd2),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Search ",
                    hintStyle:
                        TextStyle(fontSize: 16, color: Color(0xffa7a6a7)),
                    prefixIcon: Icon(
                      Icons.search_outlined,
                      color: Color(0xffaca9aa),
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20,left: 10,right: 20),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10, right: 10),
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),

                  color: Color(0xfff1edee),),
                  child: InkWell(
                    onTap: () {},
                    child: Image.asset(
                      "assets/images/samosa1.png",
                      height: 50,
                      width: 50,
                    ),
                  ),
                ),
                Column(
                  children: [
                    Text("Samosa",style:
                      TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15
                      ),),
                    SizedBox(height: 5,),
                    Text("₹ 10.00",style:
                    TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15
                    ),)
                  ],
                ),
                Spacer(),
                Icon(Icons.favorite,
                  color: Colors.red,)
              ],
            ),
          )
        ],
      ),
    );
  }
}

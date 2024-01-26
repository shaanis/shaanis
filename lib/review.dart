import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class reviewPage extends StatefulWidget {
  const reviewPage({super.key});

  @override
  State<reviewPage> createState() => _reviewPageState();
}

class _reviewPageState extends State<reviewPage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10, top: 50),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.close),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xfff1edee),
                    ),
                    child: Image.asset("assets/images/samosa1.png"),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 15.0, top: 8, bottom: 8, right: 18),
                        child: Text(
                          "Samosa",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0, top: 8),
                        child: Text(
                          "Rate this item",
                          style:
                              TextStyle(fontSize: 10, color: Color(0xff5f5d5e)),
                        ),
                      ),
                    ],
                  ),
                   Spacer(),
                   TextButton(
                      onPressed: () {},
                      child: Text(
                        "Post",
                        style: TextStyle(
                          fontSize: 18,
                            color: Color(0xff61e725)),
                      ),
                    ),

                ],
              ),
            ),
            SizedBox(height: 20),
            
            Row(
              children: [
                Padding(
                  padding:  EdgeInsets.only(left: 20.0, top: 30),
                  child: Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Color(0xffdffcd2),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Image.asset("assets/images/ic_launcher.png",
                      width: 50,height: 50,),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15,top: 30),
                  child: Column(
                    children: [
                      Text(
                        "Shanoof T",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5,),
                        child: Text(
                          " Reviews are public.",
                          style:
                          TextStyle(fontSize: 12, color: Color(0xff9fa4ba),),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            SizedBox(height: 20,),
            RatingBar.builder(
              itemPadding: EdgeInsets.all(9),
                itemSize: 22,
                initialRating: 3,
                minRating: 0,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemBuilder: (context, _) => Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                onRatingUpdate: (rating) {}),
            SizedBox(height: 10,),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 15,
              ),
              child: Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  color: Color(0xffebebec),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Describe your experience (optional) ",
                      hintStyle:
                      TextStyle(fontSize: 14, color: Color(0xff6a6d82)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide.none),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 260.0),
              child: Text("0/500",
              style: TextStyle(
                fontSize: 12,
                color: Color(0xff6a6d82)
              ),),
            )
          ],
        ),
      ),
    );
  }
}

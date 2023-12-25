import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ItemDetail extends StatefulWidget {
  const ItemDetail({super.key});

  @override
  State<ItemDetail> createState() => _ItemDetailState();
}

class _ItemDetailState extends State<ItemDetail> {
  bool _isLiked = false;
  void _toggleLike() {
    setState(() {
      _isLiked = !_isLiked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.only(left: 80.0),
          child: Text(
            "Details",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                'assets/images/samosa1.png',
                width: 250,
                height: 250,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 250.0),
              child: IconButton(
                onPressed: _toggleLike,
                icon: Icon(
                  _isLiked ? Icons.favorite : Icons.favorite_border,
                  color: _isLiked ? Colors.red : Colors.black,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Text(
                    'Samosa',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RatingBar.builder(
                          itemSize: 12,
                          initialRating: 3,
                          minRating: 0,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemBuilder: (context, _) => Icon(
                                Icons.star,
                                size: 10,
                                color: Colors.amber,
                              ),
                          onRatingUpdate: (rating) {})
                    ],
                  ),
                ],
              ),
            ),
            Text(
              """Get ready for a flavour-packed adventure
with our samosas! These golden , crispy
delights are like flavour bombs, exploding
with each bite. Ideal for satisfying your 
snack cravings at our canteen.""",
              style: TextStyle(color: Color(0xff5f5d5e), fontSize: 17),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 250.0),
              child: Text(
                "₹10.00",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            SizedBox(height: 3,),
            Padding(
              padding: const EdgeInsets.only(right: 250.0),
              child: Text("Total Price",style: TextStyle(
                fontSize: 12,
                color: Color(0xffa49798)
              ),),
            ),
            SizedBox(height: 25,),
            ElevatedButton(onPressed: (){},
              style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 12,vertical: 5),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)
                    ),
                    backgroundColor: Color(0xff232623),
                    minimumSize: Size(280, 48)
              ),
                child: Text('Add to Cart'),),
            SizedBox(height: 15,),
            ElevatedButton(onPressed: (){},
              style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 12,vertical: 5),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)
                  ),
                  backgroundColor: Color(0xff53e510),
                  minimumSize: Size(280, 48)
              ),
              child: Text('Buy Now'),)
          ],
        ),
      ),
    );
  }
}

import 'package:canteen_management/review.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'cart.dart';

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
  //add to cart
  void addCart(){}

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
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
          padding: const EdgeInsets.only(left: 80.0),
          child: Text(
            "Details",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: Container(
        margin: EdgeInsets.all(height*.012),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                'assets/images/samosa1.png',
                width: 250,
                height: 250,
              ),
            ),
            IconButton(
              onPressed: _toggleLike,
              icon: Icon(
                _isLiked ? Icons.favorite : Icons.favorite_border,
                color: _isLiked ? Colors.red : Colors.black,
              ),
            ),
            Row(
              children: [
                Text(
                  'Samosa',
                  style: TextStyle(
                      fontSize: height*.021,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(onTap:(){Navigator.push(context, MaterialPageRoute(builder: (context)=>reviewPage()));},
                      child:Row(
                        children: [
                          Icon(Icons.star,color: Colors.amber,size: height*.020,),
                          Icon(Icons.star,color: Colors.amber,size: height*.018,),
                          Icon(Icons.star,color: Colors.amber,size: height*.016,),
                          Icon(Icons.star,color: Colors.grey,size: height*.014,),
                          Icon(Icons.star,color: Colors.grey,size: height*.012,),
                          SizedBox(width: width*.018,)
                        ],
                      )
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: height*.01,),
            Text(
              "Get ready for a flavour-packed adventure with our samosas! These golden , crispy delights are like flavour bombs, exploding with each bite. Ideal for satisfying your snack cravings at our canteen.",
              style: TextStyle(color: Color(0xff5f5d5e), fontSize: 17,height: height*.0017,wordSpacing: height*.003),
            ),
            SizedBox(
              height: height*.015,
            ),
            Text(
              "₹10.00",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: height*.019),
            ),
            SizedBox(height: height*.005,),
            Text("Total Price",style: TextStyle(
              fontSize: height*.0135,
              color: Color(0xffa49798)
            ),),
            SizedBox(height: height*.121,),
            Center(
              child: ElevatedButton(onPressed: (){
                addCart();
              },
                style: ElevatedButton.styleFrom(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(height*.028)
                      ),
                      backgroundColor: Color(0xff232623),
                      minimumSize: Size(width*.7, height*.058)
                ),
                  child: Text('Add to Cart'),),
            ),
            SizedBox(height: height*.015,),
            Center(
              child: ElevatedButton(
                onPressed: (){
                },
                style: ElevatedButton.styleFrom(
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(height*.028)
                    ),
                    backgroundColor: Color(0xff53e510),
                    minimumSize: Size(width*.7, height*.058)
                ),
                child: Text('Buy Now'),),
            )
          ],
        ),
      ),
    );
  }
}

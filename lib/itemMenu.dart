import 'package:canteen_management/item%20detial.dart';
import 'package:canteen_management/menu.dart';
import 'package:flutter/material.dart';

class ItemMenu extends StatefulWidget {
  const ItemMenu({super.key});

  @override
  State<ItemMenu> createState() => _ItemMenuState();
}

class _ItemMenuState extends State<ItemMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
            "Menu",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        margin: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Find you best food',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
            ),
            Text(
              'Order & Eat.😎',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
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
            SizedBox(
              height: 20,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {},
                  child: Container(
                    margin: EdgeInsets.all(10),
                    height: 100,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(
                        color: Colors.grey, // Border color
                        width: 0.5, // Border width
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(height: 2,),
                        Image.asset(
                          'assets/images/Ellipse13.png',
                          height: 40,
                          width: 40,
                        ),
                        SizedBox(height: 22,),
                        Transform.rotate(
                          angle: -1.5708, // This is equivalent to 90 degrees in radians
                          child: Text(
                            'Snacks',
                            style: TextStyle(fontSize: 12),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        margin: EdgeInsets.all(10),
                        height: 100,
                        width: 50,
                        decoration: BoxDecoration(color: Color(0xff53e510),
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(
                            color: Colors.grey, // Border color
                            width: 0.5, // Border width
                          ),
                        ),
                        child: Column(
                          //crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(height: 2,),
                            Image.asset(
                              'assets/images/Ellipse13.png',
                              height: 40,
                              width: 40,
                            ),
                            SizedBox(height: 22,),
                            Transform.rotate(
                              angle: -1.5708, // This is equivalent to 90 degrees in radians
                              child: Text(
                                'Non Veg',
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        margin: EdgeInsets.all(10),
                        height: 100,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(
                            color: Colors.grey, // Border color
                            width: 0.5, // Border width
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(height: 2,),
                            Image.asset(
                              'assets/images/Ellipse13.png',
                              height: 40,
                              width: 40,
                            ),
                            SizedBox(height: 22,),
                            Transform.rotate(
                              angle: -1.5708, // This is equivalent to 90 degrees in radians
                              child: Text(
                                'Veg',
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        margin: EdgeInsets.all(10),
                        height: 100,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(
                            color: Colors.grey, // Border color
                            width: 0.5, // Border width
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(height: 2,),
                            Image.asset(
                              'assets/images/Ellipse13.png',
                              height: 40,
                              width: 40,
                            ),
                            SizedBox(height: 22,),
                            Transform.rotate(
                              angle: -1.5708, // This is equivalent to 90 degrees in radians
                              child: Text(
                                'Drinks',
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
              ],
            ),
            SizedBox(height: 20,),
            Expanded(
                child: Container(margin:  EdgeInsets.all(5),
                  decoration: BoxDecoration(color: Colors.white,
                  ),
                    child: SingleChildScrollView(scrollDirection: Axis.vertical,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              InkWell(
                                onTap:(){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ItemDetail()));
                                },
                                child: Container(height: 170,width: 170,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                      color: Colors.grey, // Border color
                                      width: 0.5, // Border width
                                    ),
                                  ),
                                  child: Column(
                                    children: [
                                      SizedBox(height: 10,),
                                      Container(
                                        height: 100,width: 100,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(50),
                                          image: DecorationImage(image: AssetImage('assets/images/biriyani5.png',),
                                            fit:BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Text('Chikken Biriyani'),
                                      SizedBox(height: 5,),
                                      Text('₹70',style: TextStyle(fontWeight: FontWeight.w500),),
                                    ],
                                  ),
                                ),
                              ),Spacer(),
                              InkWell(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ItemDetail()));
                                },
                                child: Container(height: 170,width: 170,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                      color: Colors.grey, // Border color
                                      width: 0.5, // Border width
                                    ),
                                  ),
                                  child: Column(
                                    children: [
                                      SizedBox(height: 10,),
                                      Container(
                                        height: 100,width: 100,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(50),
                                          image: DecorationImage(image: AssetImage('assets/images/biriyani5.png',),
                                            fit:BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Text('Chikken Biriyani'),
                                      SizedBox(height: 5,),
                                      Text('₹70',style: TextStyle(fontWeight: FontWeight.w500),),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20,),
                          Row(
                            children: [
                              InkWell(
                                onTap:(){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ItemDetail()));
                                },
                                child: Container(height: 170,width: 170,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                      color: Colors.grey, // Border color
                                      width: 0.5, // Border width
                                    ),
                                  ),
                                  child: Column(
                                    children: [
                                      SizedBox(height: 10,),
                                      Container(
                                        height: 100,width: 100,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(50),
                                          image: DecorationImage(image: AssetImage('assets/images/biriyani5.png',),
                                            fit:BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Text('Chikken Biriyani'),
                                      SizedBox(height: 5,),
                                      Text('₹70',style: TextStyle(fontWeight: FontWeight.w500),),
                                    ],
                                  ),
                                ),
                              ),Spacer(),
                              InkWell(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ItemDetail()));
                                },
                                child: Container(height: 170,width: 170,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                      color: Colors.grey, // Border color
                                      width: 0.5, // Border width
                                    ),
                                  ),
                                  child: Column(
                                    children: [
                                      SizedBox(height: 10,),
                                      Container(
                                        height: 100,width: 100,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(50),
                                          image: DecorationImage(image: AssetImage('assets/images/biriyani5.png',),
                                            fit:BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Text('Chikken Biriyani'),
                                      SizedBox(height: 5,),
                                      Text('₹70',style: TextStyle(fontWeight: FontWeight.w500),),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20,),
                          Row(
                            children: [
                              InkWell(
                                onTap:(){},
                                child: Container(height: 170,width: 170,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                      color: Colors.grey, // Border color
                                      width: 0.5, // Border width
                                    ),
                                  ),
                                  child: Column(
                                    children: [
                                      SizedBox(height: 10,),
                                      Container(
                                        height: 100,width: 100,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(50),
                                          image: DecorationImage(image: AssetImage('assets/images/biriyani5.png',),
                                            fit:BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Text('Chikken Biriyani'),
                                      SizedBox(height: 5,),
                                      Text('₹70',style: TextStyle(fontWeight: FontWeight.w500),),
                                    ],
                                  ),
                                ),
                              ),Spacer(),
                              InkWell(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ItemDetail()));
                                },
                                child: Container(
                                  height: 170,width: 170,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                      color: Colors.grey, // Border color
                                      width: 0.5, // Border width
                                    ),
                                  ),
                                  child: Column(
                                    children: [
                                      SizedBox(height: 10,),
                                      Container(
                                        height: 100,width: 100,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(50),
                                          image: DecorationImage(image: AssetImage('assets/images/biriyani5.png',),
                                          fit:BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Text('Chikken Biriyani'),
                                      SizedBox(height: 5,),
                                      Text('₹70',style: TextStyle(fontWeight: FontWeight.w500),),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../cart.dart';
import '../fav.dart';
import '../menu.dart';
import '../token.dart';

class navigation extends StatefulWidget {
  const navigation({super.key});

  @override
  State<navigation> createState() => _navigationState();
}

class _navigationState extends State<navigation> {
  int myIndex = 0;
  List<Widget> widgetList = const [
    MenuPage(),
    TokenPage(),
    CartPage(),
    Favorite(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
          children: widgetList,
          index: myIndex),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        //selectedItemColor: Color(0xff58e517),
        backgroundColor: Colors.white,
        onTap: (index) {
          setState(() {
            myIndex = index;
          });
        },
        currentIndex: myIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home,color: Colors.black),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.book,color: Colors.black),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.bag,color: Colors.black),
            label: '',
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite_border_outlined,
                color: Colors.black,
              ),
              label: ''),
        ],
      ),
    );
  }
}

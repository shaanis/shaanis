import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                """What would you
   like to order?""",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize:height*.024 ),
              ),

          ],
        ),
        SizedBox(height: height*.027,),
        //search widget
        Container(
          width: width*.92,
          height: height*.065,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: TextFormField(
            decoration: InputDecoration(
              hintText: "Search our products... ",
              hintStyle: TextStyle(
                  fontSize: height*.017,
                color: Color(0xffa7a6a7)
              ),
              prefixIcon: Icon(Icons.search_outlined,
              color: Color(0xffaca9aa),),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none
              ),
            ),
          ),
        ),
        SizedBox(height: height*.05,)
      ],
    );
  }
}

import 'package:flutter/material.dart';

class Maintanace extends StatefulWidget {
  const Maintanace({super.key});

  @override
  State<Maintanace> createState() => _MaintanaceState();
}

class _MaintanaceState extends State<Maintanace> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("assets/images/maintenance.png",
                width: 250,height: 250,),
                SizedBox(height: 20,),
                Text("We're under maintenance",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20
                ),),
                SizedBox(height: 20,),
                Text("""Please check back soon just putting little touch
                up on some pretty updates.""",
                style: TextStyle(
                  color: Color(0xff6a6d82)
                ),),
                SizedBox(height: 40,),
                ElevatedButton(
                  onPressed: (){},
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                    ),
                    minimumSize: Size(120, 45),
                    backgroundColor: Color(0xff53e510)
                  ),
                    child: Text("Close"),)
              ],
            ),
        
      ),
    );
  }
}

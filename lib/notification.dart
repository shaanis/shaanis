import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      leading: IconButton(
        icon:Icon(CupertinoIcons.back,color: Colors.black,) ,
        onPressed: (){
          Navigator.pop(context);
        },
      ),
        title: Text("Notifications",
        style: TextStyle(
          color: Colors.black,
          fontSize: 17
        ),),
    ),
      backgroundColor: Colors.white,
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
           Image.asset('assets/images/fries1.jpg',height: 150,width: 150,),
            SizedBox(height: 8,),
            Text('no notifications yet!',style: TextStyle(
              fontWeight: FontWeight.bold
            ),),
            SizedBox(height: 5,),
            Text("""You are up to date! we'll notify you
    when there is something new""",style: TextStyle(
              color: Color(0xff5e5f62)
            ),),
          ],
        ),
      ),
    );
  }
}

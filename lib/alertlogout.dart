import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum DialogsAction { yes, cancel }

class AlertDialogs {
  static Future<DialogsAction> yesCancelDialog(
      BuildContext context,
      String title,
      String body,
      ) async {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final action = await showDialog<DialogsAction>(
      context: context,
      barrierDismissible: false,
      // false = user must tap button, true = tap outside dialog
      builder: (BuildContext dialogContext) {
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          title: Text(title,style: TextStyle(fontWeight: FontWeight.w400),),
          content: Text(body,style: TextStyle(
              fontWeight: FontWeight.w400,
              color:Color(0xff6f6f70),
          fontSize: 14),),
          actions: <Widget>[
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 0,
                  backgroundColor: Color(0xfff3f3f4),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))
              ),
              child: Text('Cancel',style: TextStyle(
                  color: Color(0xff6f6f70),
                fontWeight: FontWeight.w400,
                  fontSize: 12
              ),),
              onPressed: () {
                Navigator.of(dialogContext).pop(DialogsAction.cancel); // Dismiss alert dialog
              },
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(elevation: 0,
                backgroundColor: Color(0xfffd3327),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))
              ),
              child: Text('Logout',style: TextStyle(
                color: Colors.white,
                  fontWeight: FontWeight.w400,
                fontSize: 12
              ),),
              onPressed: () {
                Navigator.of(dialogContext).pop(DialogsAction.yes); // Dismiss alert dialog
              },
            ),
          ],
        );
      },
    );
    return action ?? DialogsAction.cancel;
  }
}

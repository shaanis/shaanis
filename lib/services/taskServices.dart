import 'package:cloud_firestore/cloud_firestore.dart';

import '../model/modelclass.dart';

class TaskServices{

  final CollectionReference _taskCollection = FirebaseFirestore.instance.collection('task');

  //create

  Future<UserModel?>createTask(UserModel user)async{
    try{
      final taskMap=UserModel().toMap();
      await _taskCollection.doc(user.uid).set(user);

      return user;

    }on FirebaseException catch(e){
      print(e.toString());
    }
  }

  //update



}
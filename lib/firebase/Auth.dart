import 'package:canteen_management/model/modelclass.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shared_preferences/shared_preferences.dart';

//-----------------------------------GOOGLE SIGNIN-------------------------------------------

Future<UserCredential> signInWithGoogle() async {
  // Trigger the authentication flow
  final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

  // Obtain the auth details from the request
  final GoogleSignInAuthentication? googleAuth =
      await googleUser?.authentication;

  // Create a new credential
  final credential = GoogleAuthProvider.credential(
    accessToken: googleAuth?.accessToken,
    idToken: googleAuth?.idToken,
  );

  // Once signed in, return the UserCredential
  return await FirebaseAuth.instance.signInWithCredential(credential);
}

//-----------------------------------EMAIL&PASS SIGNIN-------------------------------------------

class AuthServices {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final CollectionReference _userCollection =
      FirebaseFirestore.instance.collection('user');
  //REGISTER
  Future<UserCredential?> registerUser(UserModel user) async {
    UserCredential userData = await FirebaseAuth.instance
        .createUserWithEmailAndPassword(
            email: user.email.toString(), password: user.password.toString());
    if (userData != null) {
      FirebaseFirestore.instance
          .collection('users')
          .doc(userData.user!.uid)
          .set({
        'uid': userData.user!.uid,
        'email': userData.user!.email,
        'name': user.name,
      });
      return userData;
    }
  }

  //LOGIN

  Future<DocumentSnapshot?> loginUser(UserModel user) async {
    UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: user.email.toString(),
        password: user.password.toString());
    DocumentSnapshot? snap;
    SharedPreferences _pref = await SharedPreferences.getInstance();
    String? token = await userCredential.user!.getIdToken();

    if (userCredential != null) {
      snap = await _userCollection.doc(userCredential.user!.uid).get();
      await _pref.setString('token', token!);
      await _pref.setString('name', snap['name']);
      await _pref.setString('email', snap['email']);
      return snap;
    }
  }

  //LOGOUT

  Future<void> logout() async {
    SharedPreferences _pref = await SharedPreferences.getInstance();
    await _pref.clear();
    _auth.signOut();
  }

  Future<bool?>isloggedin()async{
    SharedPreferences _pref = await SharedPreferences.getInstance();
    String? _token = await _pref.getString('token');
    if(_token==null){
      return false;
    }else{
      return true;
    }
  }

}


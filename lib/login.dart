import 'package:canteen_management/menu.dart';
import 'package:canteen_management/navbar/navigbar.dart';
import 'package:canteen_management/uporin.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'firebase/Auth.dart';

class SignIn extends StatefulWidget {

  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}
class _SignInState extends State<SignIn> {
  bool _isPasswordVisible = false;
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final GlobalKey<FormState> _formKey= GlobalKey<FormState>();

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
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Register()));
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: height,
          width: width,
          color: Colors.white,
          padding: EdgeInsets.all(height*.02),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Image(
                  image: AssetImage('assets/images/Frame8.png'),
                  width: 200,
                  height: 150,
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Hungry?",
                  style: GoogleFonts.getFont('Rubik',
                      textStyle: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          color: Colors.black)),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  """
Ready to get started with our canteen
 management system? Simply click the
                 Get started button""",
                  style: TextStyle(color: Color(0xff797777)),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter an email ';
                    }
                    return null;
                  },
                  controller: _emailController,
                  decoration: InputDecoration(
                      contentPadding:
                      EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                      fillColor: Color(0xffebebec),
                      filled: true,
                      hintText: "Enter your email",
                      hintStyle: TextStyle(
                        color: Color(0xffb8b7b8),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none),
                      prefixIcon: Icon(
                        Icons.person_outline_outlined,
                        color: Colors.black,
                      )),
                ),
                SizedBox(
                  height: 30,
                ),
                TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter a password';
                    } else if (value!.length < 6) {
                      return 'Password must be at least 6 characters';
                    }
                    return null;
                  },
                  controller: _passwordController,
                  obscureText: !_isPasswordVisible,
                  decoration: InputDecoration(
                      contentPadding:
                      EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                      fillColor: Color(0xffebebec),
                      filled: true,
                      hintText: "Enter your password",
                      hintStyle: TextStyle(
                        color: Color(0xffb8b7b8),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none),
                      suffixIcon: IconButton(
                        icon: Icon(
                            _isPasswordVisible
                                ? Icons.visibility_sharp
                                : Icons.visibility_off_sharp,
                            size: 18),
                        onPressed: () {
                          setState(() {
                            _isPasswordVisible = !_isPasswordVisible;
                          });
                        },
                      ),
                      prefixIcon: Icon(
                        Icons.lock_outline,
                        color: Colors.black,
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 250),
                  child: TextButton(
                      onPressed: () {

                      },
                      child: Text(
                        "Forgot password?",
                        style: TextStyle(fontSize: height*.012, color: Color(0xffcccccd)),
                      )),
                ),
                ElevatedButton(
                    onPressed: () async {
                      if(_formKey.currentState!.validate()){
                        try {
                          final credential = await FirebaseAuth.instance
                              .signInWithEmailAndPassword(
                              email: _emailController.text,
                              password: _passwordController.text);
                        } on FirebaseAuthException catch (e) {
                          if (e.code == 'user-not-found') {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text("No user found"),
                                behavior:SnackBarBehavior.floating ,
                                duration: Duration(seconds: 1),
                              ),
                            );
                          } else if (e.code == 'wrong-password') {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text("Wrong password"),
                                behavior:SnackBarBehavior.floating ,
                                duration: Duration(seconds: 1),
                              ),
                            );
                          }
                        }}
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>navigation()));
                    },
                    style: ElevatedButton.styleFrom(
                        elevation: 0,
                        padding:
                        EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        backgroundColor: Color(0xff53e510),
                        minimumSize: Size(400, 50)),
                    child: Text("Sign In")),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "OR",
                  style: TextStyle(fontSize: 10, color: Colors.grey),
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () async {
                    await signInWithGoogle();
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>MenuPage()));
                  },
                  child: Image.asset(
                    "assets/images/google_2504739.png",
                    width: 30,
                    height: 30,
                  ),
                ),
                SizedBox(height: 50)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
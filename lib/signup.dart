import 'package:canteen_management/uporin.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController _nameController =TextEditingController();
  TextEditingController _emailController =TextEditingController();
  TextEditingController _passwordController =TextEditingController();

  @override
  void dispose() {
   _nameController.dispose();
   _emailController.dispose();
   _passwordController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => Register()));
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 30,vertical: 15),
            height: MediaQuery.of(context).size.height - 30,
            width: double.infinity,
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: <Widget>[
                Text(
                  "Create an account",
                  style: TextStyle(
                      color: Color(0xff58e517),
                      fontSize: 25,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  """Ready to get started with our canteen
management system? Simply click the 
                  Get started button.""",
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 15,
                  ),
                ),
                ],
                ),
                //SizedBox(height: 15,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                       TextFormField(controller: _nameController,
                         decoration: InputDecoration(
                             contentPadding: EdgeInsets.symmetric(vertical: 10,horizontal: 12),
                             filled: true,
                             fillColor: Color(0xffebebec),
                           border: OutlineInputBorder(
                             borderRadius: BorderRadius.circular(10),
                               borderSide: BorderSide.none
                           ),
                           labelText: "Enter your name",
                           prefixIcon: Icon(Icons.person_outline_outlined,color: Colors.black)
                         ),
                       ),
                    SizedBox(height: 20,),
                    TextField(controller: _emailController,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 10,horizontal: 12),
                        filled: true,
                          fillColor: Color(0xffebebec),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none
                          ),
                          labelText: "Enter your Email",
                          prefixIcon: Icon(Icons.email_outlined,color: Colors.black)
                      ),
                    ),
                    SizedBox(height: 20,),
                    TextFormField(obscureText: true,
                      controller: _passwordController,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 10,horizontal: 12),
                          filled: true,
                          fillColor: Color(0xffebebec),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none
                          ),
                          labelText: "Enter your password",
                          prefixIcon: Icon(Icons.lock_outline,color: Colors.black,)
                      ),
                    ),
                    SizedBox(height: 20,),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 10,horizontal: 12),
                          filled: true,
                          fillColor:  Color(0xffebebec),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none
                          ),
                          labelText: "Re-enter your password",
                          prefixIcon: Icon(Icons.lock_outline,color: Colors.black)
                      ),
                    ),
                    SizedBox(height: 20,),
                    ElevatedButton(onPressed: (){},

                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(horizontal: 12,vertical: 5),
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)
                        ),
                        backgroundColor: Color(0xff58e517),
                        minimumSize: Size(400, 50)
                      ),
                        child: Text("Sign Up",
                        style: TextStyle(
                          color: Colors.white
                        ),
                        ),
                    ),
                    SizedBox(height: 20),
                    Text("OR",style: TextStyle(
                      fontSize: 10,color: Colors.grey
                    ),),
                   SizedBox(height: 20,),
                    InkWell(
                      onTap: (){

                      },
                      child: Image.asset("assets/images/google_2504739.png",
                      width: 30,
                        height: 30,
                      ),
                    )
                  ],
                )
              ],
            ),

          ),
      ),
    );
  }
}

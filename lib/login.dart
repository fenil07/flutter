import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:log_demo/SplashScreen.dart';
import 'package:log_demo/UserModel.dart';
import 'package:log_demo/register.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  void checkvalues(){
    String email=emailController.text.trim();
    String password=passController.text.trim();
    if(email==""||password==""){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text("Please fill all fields")));
    }
    else{
      login(email,password);
    }
  }
  void login(String email,String password) async {
    UserCredential? credential;
    try {
      credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: email,
          password: password);
    } on FirebaseAuthException catch (ex) {
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(ex.message.toString()))
      );
    }
    if(credential!=null){
      String uid=credential.user!.uid;
      DocumentSnapshot userdata = await FirebaseFirestore.instance.
      collection('user').doc(uid).get();
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>
          SplashScreen(),));
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Login Successful"))
      );
      UserModel userModel=UserModel.fromMap(userdata as Map<String,dynamic>);
    }
  }
  @override
  bool p = true;
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Color(0xFF3F4041),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Stack(
            children: [
              Container(
                padding: EdgeInsets.only(left: 35, top: 130),
                child: Text(
                  'Welcome',
                  style: TextStyle(color: Colors.white, fontSize: 36),
                ),
              ),
              SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.4,
                      right: 35,
                      left: 35),
                  child: Column(
                    children: [
                      TextField(
                        controller: emailController,
                        decoration: InputDecoration(
                            fillColor: Colors.grey.shade100,
                            filled: true,
                            hintText: 'Email',
                            prefixIcon: Icon(
                              Icons.email,color: Colors.black,
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                      SizedBox(height: 30,),
                      TextField(
                        controller: passController,
                        obscureText: p,
                        decoration: InputDecoration(
                            fillColor: Colors.grey.shade100,
                            filled: true,
                            hintText: 'password',
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  p = !p;
                                });
                              },
                              icon: p
                                  ? Icon(Icons.remove_red_eye,
                                  color: Colors.black)
                                  : Icon(Icons.remove_red_eye_outlined,
                                  color: Colors.black),
                            ),
                            prefixIcon: Icon(
                              Icons.key,
                              color: Colors.black,
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                      SizedBox(height: 40,),
                      CupertinoButton(
                          color: Colors.white,
                          child: Text("Login",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black),),
                          onPressed: (){
                            checkvalues();
                          }),
                      SizedBox(height: 40,),
                    ],
                  ),
                ),
              )
            ],
          ),
          bottomNavigationBar: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account?",style: TextStyle(color: Colors.white)),
                TextButton(onPressed: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Register(),));
                }, child: Text("SignUp"))
              ]
          ),
        ),
      ),
    );
  }
}

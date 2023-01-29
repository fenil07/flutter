
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:log_demo/SplashScreen.dart';
import 'package:log_demo/home.dart';
import 'package:log_demo/login.dart';
import 'package:log_demo/register.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'SplashScreen',
    routes: {
      'SplashScreen':(context) => SplashScreen(),
     'login':(context) => Login(),
     'register':(context) => Register(),
     'home':(context) => Home(),
    },
  ));
}

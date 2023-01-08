import 'package:flutter/material.dart';
import 'package:log_demo/home.dart';
import 'package:log_demo/login.dart';
import 'package:log_demo/register.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'login',
    routes: {
     'login':(context) => Login(),
     'register':(context) => Register(),
     'home':(context) => Home()
    },
  ));
}

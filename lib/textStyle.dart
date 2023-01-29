import 'dart:ui';

import 'package:flutter/material.dart';

Color color = Colors.white;

TextStyle myStyle(){
  return TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.w400);
}

TextStyle headStyle(color){
  return TextStyle(fontSize: 34, fontWeight: FontWeight.bold, color: color);
}

TextStyle linkStyle(){
  return TextStyle(fontSize: 18, fontWeight: FontWeight.w400, color: Colors.blue, decoration: TextDecoration.underline);
}
TextStyle myStyleBlack(){
  return TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold);
}

TextStyle myStyle1(){
  return TextStyle(fontSize: 14, color: Colors.white, fontWeight: FontWeight.w400);
}
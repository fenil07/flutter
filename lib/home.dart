import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
       // backgroundColor: Colors.transparent,
       // elevation: 0,
      ),
    //backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              alignment: Alignment.center,
              child: Text('welcome',style: TextStyle(color: Colors.white,fontSize: 33),),
            )
          ],
        ),
    ),
    );
  }
}

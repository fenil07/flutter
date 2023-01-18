import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var arrColors = [Colors.amber,
    Colors.orange,
    Colors.grey,
    Colors.black,
    Colors.blue,
    Colors.green,
    Colors.purpleAccent,
    Colors.brown];
    return Scaffold(
    //   body: GridView.count(crossAxisCount: 2,
    // //  mainAxisSpacing: 11,
    // //  crossAxisSpacing: 11,
    //   children: [
    //     Padding(
    //       padding: const EdgeInsets.all(8.0),
    //       child: Container(color: arrColors[0],),
    //     ),
    //     Padding(
    //       padding: const EdgeInsets.all(8.0),
    //       child: Container(color: arrColors[1],),
    //     ),
    //     Padding(
    //       padding: const EdgeInsets.all(8.0),
    //       child: Container(color: arrColors[2],),
    //     ),
    //     Padding(
    //       padding: const EdgeInsets.all(8.0),
    //       child: Container(color: arrColors[3],),
    //     ),
    //     Padding(
    //       padding: const EdgeInsets.all(8.0),
    //       child: Container(color: arrColors[4],),
    //     ),
    //     Padding(
    //       padding: const EdgeInsets.all(8.0),
    //       child: Container(color: arrColors[5],),
    //     ),
    //     Padding(
    //       padding: const EdgeInsets.all(8.0),
    //       child: Container(color: arrColors[6],),
    //     ),
    //     Padding(
    //       padding: const EdgeInsets.all(8.0),
    //       child: Container(color: arrColors[7],),
    //     ),
    //     ],),
      body: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount
        (crossAxisCount: 2/*,mainAxisSpacing: 11,crossAxisSpacing: 11*/),
        itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(color: arrColors[index],),
        );
      },itemCount: arrColors.length,),
    );
  }
}

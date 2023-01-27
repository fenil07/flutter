import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:log_demo/textStyle.dart';

class Detail extends StatefulWidget {
  Map pizza;

  Detail(this.pizza);

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  int quantity = 1;
  int? price ;
  bool like = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Color(0xFF232227),
          body: Stack(children: [
            Column(
              children: [
                Container(
                  child: Column(
                    children: [
                      Container(
                        height: MediaQuery
                            .of(context)
                            .size
                            .height * 0.47,
                        width: MediaQuery
                            .of(context)
                            .size
                            .width * 1,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.elliptical(200, 40),
                              bottomLeft: Radius.elliptical(200, 40)),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                widget.pizza['name'],
                                style: headStyle(Colors.black),
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery
                                  .of(context)
                                  .size
                                  .height * 0.1,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: MediaQuery
                                      .of(context)
                                      .size
                                      .width * 0.34,
                                ),
                                Column(
                                  children: [
                                    Text(
                                      '\$' + widget.pizza['Price'].toString(),
                                      style: headStyle(Colors.black),
                                    ),
                                    Text(
                                      "Per Quantity",
                                      style: myStyleBlack(),
                                    )
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: MediaQuery
                          .of(context)
                          .size
                          .height * .150,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(padding: EdgeInsets.only(left: 10),
                            child: Text(
                              "Quantity",
                              style: headStyle(color),
                            ),
                          ),
                          Container(
                            // height: 34,
                            //width: 140,
                            decoration: BoxDecoration(
                                color: Colors.white60,
                                borderRadius: BorderRadius.circular(26)),

                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 8.0),
                                  child: InkWell(
                                    onTap: () {
                                      quantity > 1 ? quantity-- : null;
                                      price = widget.pizza['Price'] * quantity;
                                      setState(() {});
                                    },
                                    child: Container(
                                        height: MediaQuery
                                            .of(context)
                                            .size
                                            .height * .07,
                                        width: MediaQuery
                                            .of(context)
                                            .size
                                            .width * .15,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(250),
                                            color: Colors.white60),
                                        child: Icon(Icons.remove)),
                                  ),
                                ),
                                Text(
                                  "$quantity",
                                  style: myStyleBlack(),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: InkWell(
                                    onTap: () {
                                      quantity < 10 ? quantity++ : null;
                                      price = widget.pizza['Price'] * quantity;
                                      setState(() {});
                                    },
                                    child: Container(
                                        height: MediaQuery
                                            .of(context)
                                            .size
                                            .height * .07,
                                        width: MediaQuery
                                            .of(context)
                                            .size
                                            .width * .15,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(250),
                                            color: Colors.white60),
                                        child: Icon(Icons.add)),
                                  ),
                                ),

                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: MediaQuery
                          .of(context)
                          .size
                          .height * 0.05,),
                      Text(
                        "Total amount",
                        style: myStyle(),
                      ),
                      quantity != 1
                          ? Text(
                        "\$$price",
                        style: myStyle(),
                      )
                          : Text(
                        "\$" + widget.pizza['Price'].toString(),
                        style: myStyle(),
                      ),
                      SizedBox(height: MediaQuery
                          .of(context)
                          .size
                          .height * .08,),
                      CupertinoButton(
                        color: Colors.white,
                          onPressed: () {}, child: Text("Place Order",style: myStyleBlack())),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              top: 220,
              left: 100,
              child: Hero(
                  tag: 'pizzapic', child: Image.asset(widget.pizza['img'])),
              width: MediaQuery
                  .of(context)
                  .size
                  .width * .5,
              height: MediaQuery
                  .of(context)
                  .size
                  .height * .4,
            ),
            Positioned(
                top: 8,
                right: 1,
                child: IconButton(onPressed: () {
                  like = !like;
                  setState(() {});
                },
                    icon: like ? Icon(Icons.favorite_border, size: 34,) : Icon(
                      Icons.favorite, size: 34, color: Colors.black,)
                ))
          ])),
    );
  }
}
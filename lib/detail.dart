import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:log_demo/textStyle.dart';

class Detail extends StatefulWidget {
  Map item;

  Detail(this.item);

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  int quantity = 1;
  int? price;

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
                        height: MediaQuery.of(context).size.height * 0.47,
                        width: MediaQuery.of(context).size.width * 1,
                        decoration: BoxDecoration(
                          color: Colors.grey,
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
                                widget.item['name'],
                                style: headStyle(Colors.black),
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.1,
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.grey,
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                  ),
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.3,
                                ),
                                Column(
                                  children: [
                                    Text(
                                      "₹" + widget.item['Price'].toString(),
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
                      SizedBox(
                        height: MediaQuery.of(context).size.height * .150,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Text(
                              "Quantity",
                              style: myStyle(),
                            ),
                          ),
                          Container(
                            // height: 34,
                            //width: 140,
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(26)),

                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 8.0),
                                  child: InkWell(
                                    onTap: () {
                                      quantity > 1 ? quantity-- : null;
                                      price = widget.item['Price'] * quantity;
                                      setState(() {});
                                    },
                                    child: CircleAvatar(

                                        child: Icon(Icons.remove,color: Colors.black),backgroundColor: Colors.white),
                                  ),
                                ),
                                Text(
                                  "$quantity",
                                  style: myStyle(),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: InkWell(
                                    onTap: () {
                                      quantity < 10 ? quantity++ : null;
                                      price = widget.item['Price'] * quantity;
                                      setState(() {});
                                    },
                                    child: CircleAvatar(
                                        child: Icon(Icons.add,color: Colors.black),backgroundColor: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.05,
                      ),
                      Text(
                        "Total amount",
                        style: myStyle(),
                      ),
                      quantity != 1
                          ? Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.currency_rupee,
                                  color: color,
                                  size: 18,
                                ),
                                Text(
                                  "$price",
                                  style: myStyle(),
                                ),
                              ],
                            )
                          : Text(
                              "₹" + widget.item['Price'].toString(),
                              style: myStyle(),
                            ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * .08,
                      ),
                      CupertinoButton(
                          color: Colors.grey,
                          onPressed: () {},
                          child: Text("Place Order")),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * .25,
              left: MediaQuery.of(context).size.width * .25,
              child: Image.asset(widget.item['img']),
              width: MediaQuery.of(context).size.width * .5,
              height: MediaQuery.of(context).size.height * .4,
            ),
            Positioned(
                top: MediaQuery.of(context).size.height * 0.01,
                right: MediaQuery.of(context).size.width * .01,
                child: IconButton(
                    onPressed: () {
                      like = !like;
                      setState(() {});
                    },
                    icon: like
                        ? Icon(
                            Icons.favorite_border,
                            size: 34,
                          )
                        : Icon(
                            Icons.favorite,
                            size: 34,
                            color: Colors.black,
                          )))
          ])),
    );
  }
}

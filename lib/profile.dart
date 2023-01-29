import 'package:flutter/material.dart';
import 'package:log_demo/textStyle.dart';

class profile extends StatelessWidget {
  const profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF464445),
      body: Center(
        child: Stack(
            children: [
              Column(
                children: [
                  SizedBox(height: MediaQuery.of(context).size.width * 0.4,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: MediaQuery.of(context).size.width * 0.74,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.black54
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: MediaQuery.of(context).size.width * 0.05,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("User Name",style: myStyle(),),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("",style: myStyle(),),
                              ),
                            ],
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.001,
                            color: Colors.white60,
                          ),
                          SizedBox(height: MediaQuery.of(context).size.width * 0.05,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("Email",style: myStyle(),),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("",style: myStyle(),),
                              ),
                            ],
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.001,
                            color: Colors.white60,
                          ),
                          SizedBox(height: MediaQuery.of(context).size.width * 0.05,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("Phone",style: myStyle(),),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("",style: myStyle(),),
                              ),
                            ],
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.001,
                            color: Colors.white60,
                          ),
                          SizedBox(height: MediaQuery.of(context).size.width * 0.05,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("Gender",style: myStyle(),),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("",style: myStyle(),),
                              ),
                            ],
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.001,
                            color: Colors.white60,
                          ),
                          SizedBox(height: MediaQuery.of(context).size.width * 0.05,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("Date Of Birth",style: myStyle(),),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("",style: myStyle(),),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ]),
      ),
    );
  }
}

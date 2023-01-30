import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:log_demo/UserModel.dart';
import 'package:log_demo/login.dart';
import 'package:log_demo/textStyle.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  DateTime? dob;
  bool p = true;
  String gender = "";

  TextEditingController emailController = TextEditingController();
  TextEditingController phonenoController = TextEditingController();
  TextEditingController hobbiesController = TextEditingController();
  TextEditingController dateInputController = TextEditingController();
  TextEditingController passController = TextEditingController();

  void checkValues() {
    String email = emailController.text.trim();
    String mobno = phonenoController.text.trim();
    String hobby = hobbiesController.text.trim();
    String dob = dateInputController.text.trim();
    String password = passController.text.trim();
    if (email == "" ||
        mobno == "" ||
        hobby == "" ||
        dob == "" ||
        password == "") {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("Please fill all fields")));
    }
    else if(mobno.length >10){
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("Please enter a valid mobile no")));
    }
    else if (gender == "") {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("Please select gender")));
    } else {
      register(email, mobno, hobby, dob, password, gender);
    }
  }

  void register(String email, String mobno, String hobby, String dob,
      String password, String gender) async {
    UserCredential? credential;
    try {
      credential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (ex) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(ex.code.toString())));
    }
    if (credential != null) {
      String uid = credential.user!.uid;
      UserModel newUser = UserModel(
          uid: uid,
          email: email,
          mobno: mobno,
          hobby: hobby,
          dob: dob.toString(),
          password: password,
          gender: gender);
      await FirebaseFirestore.instance
          .collection("users")
          .doc(uid)
          .set(newUser.toMap())
          .then((value) => {
                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Successfully Registered"))),
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Login()))
              });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Color(0xFF3F4041),
        // decoration: BoxDecoration(
        //     image: DecorationImage(
        //         image: AssetImage('assets/register.png'), fit: BoxFit.cover)),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Stack(
            children: [
              Container(
                padding: EdgeInsets.only(left: 35, top: 70),
                child: Text(
                  'Create Acoount',
                  style: TextStyle(color: Colors.white, fontSize: 33),
                ),
              ),
              SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.2,
                      right: 20,
                      left: 10),
                  child: Column(
                    children: [
                      TextField(
                        controller: emailController,
                        decoration: InputDecoration(
                            fillColor: Colors.grey.shade100,
                            filled: true,
                            hintText: 'Email',
                            prefixIcon: Icon(
                              Icons.email,
                              color: Colors.black,
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextField(
                        controller: phonenoController,
                        keyboardType: TextInputType.number,
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        decoration: InputDecoration(
                            fillColor: Colors.grey.shade100,
                            filled: true,
                            prefixIcon: Icon(
                              Icons.phone_android,
                              color: Colors.black,
                            ),
                            hintText: 'Mobile no',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextField(
                        controller: hobbiesController,
                        decoration: InputDecoration(
                            fillColor: Colors.grey.shade100,
                            filled: true,
                            prefixIcon: Icon(
                              Icons.lens,
                              color: Colors.black,
                            ),
                            hintText: 'Hobbies',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            fillColor: Colors.grey.shade100,
                            filled: true,
                            hintText: 'Date of Birth',
                            prefixIcon: Icon(
                              Icons.calendar_month,
                              color: Colors.black,
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                        controller: dateInputController,
                        readOnly: true,
                        onTap: () async {
                          DateTime? date = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(1920),
                              lastDate: DateTime(2025));
                          if (date != null) {
                            dateInputController.text =
                                "${date!.day.toString()}-${date!.month.toString()}-${date!.year.toString()}";
                          }
                          ;
                        },
                      ),
                      SizedBox(
                        height: 10,
                      ),
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
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Radio(
                              value: "Male",
                              groupValue: gender,
                              onChanged: (value) {
                                setState(() {
                                  gender = value.toString();
                                });
                              }),
                          Text("Male", style: myStyle()),
                          Radio(
                              value: "female",
                              groupValue: gender,
                              onChanged: (value) {
                                setState(() {
                                  gender = value.toString();
                                });
                              }),
                          Text("Female", style: myStyle()),
                          Radio(
                              value: "others",
                              groupValue: gender,
                              onChanged: (value) {
                                setState(() {
                                  gender = value.toString();
                                });
                              }),
                          Text(
                            "Others",
                            style: myStyle(),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      CupertinoButton(
                          color: Colors.white,
                          child: Text("Register", style: myStyleBlack()),
                          onPressed: () {
                            checkValues();
                          })
                    ],
                  ),
                ),
              ),
            ],
          ),
          bottomNavigationBar: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Already have an account?",
                style: myStyle(),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Login(),
                        ));
                  },
                  child: Text("Login", style: TextStyle(fontSize: 18)))
            ],
          ),
        ),
      ),
    );
  }
}

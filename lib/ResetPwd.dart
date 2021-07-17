import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:project_abc/dashboard.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:project_abc/Controllers/UserController.dart';
import 'complex-funcs.dart';

class ResetPwd extends StatefulWidget {
  @override
  _ResetPwdState createState() => _ResetPwdState();
}

class _ResetPwdState extends State<ResetPwd> {
  TextEditingController emailController = new TextEditingController();
  // final uc =Get.put(UserController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SafeArea(
                      child: IconButton(
                        icon: Icon(Icons.arrow_back),
                        onPressed: () {
                          Get.to(Dashboard());
                        },
                        alignment: Alignment.topLeft,
                        iconSize: 40,
                      ),
                    ),
                    SizedBox(height: 30),
                    Center(
                      child: Text(
                        "Reset Password",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontSize: 40.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Montserrat-light',
                        ),
                      ),
                    ),
                    SizedBox(height: 40.0),
                    Text(
                      "Confirm your email and we'll send you instructions",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 25.0,
                        color: Colors.grey[500],
                        fontFamily: 'Montserrat-light',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 50),
                    userentry("Enter your email", "Email", Icons.person,
                        emailController),
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: TextButton(
                          child: Text(
                            "Send Instructions",
                            // style:TextStyle(fontSize: 20,color: Colors.white),
                          ),
                          onPressed: () {
                            Fluttertoast.showToast(
                                msg: "Email sent",
                                toastLength: Toast.LENGTH_SHORT,
                                gravity: ToastGravity.CENTER,
                                timeInSecForIosWeb: 1,
                                backgroundColor: Colors.blue,
                                textColor: Colors.white,
                                fontSize: 16.0);
                          },
                          style: TextButton.styleFrom(
                            primary: Colors.white,
                            backgroundColor: Colors.blue,
                          )),
                    ),
                    SizedBox(height: 30),
                    Center(
                      child: Text("Please check your mail ",
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Montserrat-medium',
                          )),
                    ),
                    // Obx(() => statusWidget()),
                    SizedBox(height: 30),
                  ],
                ))));
  }
  // statusWidget()=> Container(
  //   color:Colors.green,
  //   child: Padding(
  //     padding: EdgeInsets.all(10.0),
  //     child: Text("${status.value}" , style:TextStyle(color: Colors.white, ),),
  //   ),
  // );
}

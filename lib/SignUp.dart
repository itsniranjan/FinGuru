import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:project_abc/Controllers/UserController.dart';
import 'package:project_abc/dashboard.dart';
import 'package:project_abc/complex-funcs.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:project_abc/PolicyDialog.dart';
import 'complex-funcs.dart';
import 'package:form_field_validator/form_field_validator.dart';

import 'home.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool checkboxValue = false;
  TextEditingController usernameController = TextEditingController();
  TextEditingController pwdController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  // final uc =Get.put(UserController());
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  validate() {
    if (formkey.currentState.validate()) {
      print("validated");
    } else {
      print("not validated");
    }
  }

  @override
  Widget build(BuildContext context) {
    var _onPressed;
    if (checkboxValue == true) {
      _onPressed = () {
        Get.to(Dashboard());
      };
    }
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
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
                "Create Account",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Montserrat-light',
                ),
              ),
            ),
            SizedBox(height: 30.0),
            Text(
              "Sign Up",
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.blue,
                fontFamily: 'Montserrat-light',
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30),
            Form(
                key: formkey,
                autovalidateMode: AutovalidateMode.always,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      userentry("Enter your Full Name", "Full Name",
                          Icons.person, usernameController),
                      userentry("Enter your Email", "Email",
                          Icons.email_outlined, emailController),
                      userentry("Enter your password", "Password", Icons.lock,
                          pwdController),
                      userentry("Enter you Address", 'Address',
                          Icons.home_rounded, addressController),
                    ])),
            Row(
              children: [
                Checkbox(
                    value: checkboxValue,
                    onChanged: (bool value) {
                      setState(() {
                        checkboxValue = value;
                      });
                    }),
                RichText(
                  text: TextSpan(
                      text: "Terms and conditions",
                      style: TextStyle(color: Colors.black),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Get.to(PolicyDialog());
                        }),
                )
              ],
            ),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: RaisedButton(
                child: Text(
                  "Sign Up",
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
                onPressed: _onPressed,
                color:
                    checkboxValue ? Colors.blue.shade300 : Colors.blue.shade100,
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already a user? "),
                GestureDetector(
                    child: Text("Login", style: TextStyle(color: Colors.blue)),
                    onTap: () {
                      Get.to(Home());
                    }),
              ],
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  backgroundImage:
                      AssetImage('assets/google-circle-avatar.png'),
                  radius: 20,
                ),
                CircleAvatar(
                  backgroundImage:
                      AssetImage('assets/twitter-circle-avatar.png'),
                  radius: 20,
                ),
                CircleAvatar(
                  backgroundImage:
                      AssetImage('assets/facebook-circle-avatar.png'),
                  radius: 20,
                ),
              ],
            ),
          ],
        ),
      ),
    ));
  }

  // statusWidget()=> Container(
  //   color:Colors.green,
  //   child: Padding(
  //     padding: EdgeInsets.all(10.0),
  //     child: Text("${uc.status.value}" , style:TextStyle(color: Colors.white, ),),
  //   ),
  // );
}

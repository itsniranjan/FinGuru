// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// class UserController extends GetxController{
//
//
//   var status="".obs;
//   validate(){
//     if(usernameController.text.isEmpty){
//       status.value="Name is empty!";
//     }
//     else if(pwdController.text.length<6){
//       status.value="Password requires min 6 characters";
//     }
//     else if(!emailController.text.isEmail){
//       status.value="Invalid email";
//     }
//     else{
//       login();
//     }
//
//   }
//   login() async{
//     status.value="Login successful!";
//     print(status.value);
//   }
// }
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:project_abc/Controllers/UserController.dart';


Widget userentry(String titletext, String placeholder, var icon, var ctrl){
  TextEditingController usernameController= TextEditingController();
  TextEditingController pwdController= TextEditingController();

  if(placeholder=="Email"){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Icon(icon),
            Text("$titletext"),
          ],
        ),
        SizedBox(height:5),
        TextFormField(
          controller: ctrl,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
                hintText: "$placeholder",
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(5))),
            validator:  MultiValidator(
                [
                  RequiredValidator(errorText: "Cannot be empty"),
                  EmailValidator(errorText: "Not a valid email"),
                ]
            )

        ),
        SizedBox(height:30),

      ],
    );
  }
  else if(placeholder=="Password"){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Icon(icon),
            Text("$titletext"),
          ],
        ),
        SizedBox(height:5),
        TextFormField(
            controller: ctrl,
            keyboardType: TextInputType.visiblePassword,
            decoration: InputDecoration(
                hintText: "$placeholder",
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(5))),
            validator: MinLengthValidator(6, errorText: "Should be at least 6 characters")
        ),
        SizedBox(height:30),

      ],
    );
  }
  else if(placeholder=="Address"){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Icon(icon),
            Text("$titletext"),
          ],
        ),
        SizedBox(height:5),
        TextFormField(
          controller: ctrl,
          keyboardType: TextInputType.multiline,
          maxLines: 3,
          decoration: InputDecoration(
              hintText: "$placeholder",
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(5))),
          validator: RequiredValidator(errorText: "Required"),
        ),
        SizedBox(height:30),

      ],
    );
  }

  else {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Icon(icon),
            Text("$titletext"),
          ],
        ),
        SizedBox(height:5),
        TextFormField(
          controller: ctrl,
            decoration: InputDecoration(
                hintText: "$placeholder",
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(5))),
            validator: RequiredValidator(errorText: "Required"),
        ),
        SizedBox(height:30),

      ],
    );
  }
  }




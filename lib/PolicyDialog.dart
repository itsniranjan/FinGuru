import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_abc/SignUp.dart';

class PolicyDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Terms and Conditions", style: TextStyle(color:Colors.white),),
        backgroundColor: Colors.blue,
      ),
      body:SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height:30),
                Dialog(
                  child:Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Privacy Policy for terms and conditions\nAt abc.com, accessible from sfer, one of our main priorities is the privacy of our visitors. This Privacy Policy document contains types of information that is collected and recorded by abc.com and how we use it.\nIf you have additional questions or require more information about our Privacy Policy, do not hesitate to contact us.\n\nThis Privacy Policy applies only to our online activities and is valid for visitors to our website with regards to the information that they shared and/or collect in abc.com. This policy is not applicable to any information collected offline or via channels other than this website. Our Privacy Policy was created with the help of the Online Generator of Privacy Policy.\n\nConsent\n\nBy using our website, you hereby consent to our Privacy Policy and agree to its terms."),
                  )
                )

      ]
        ),
      )
    ),
    );
  }
}

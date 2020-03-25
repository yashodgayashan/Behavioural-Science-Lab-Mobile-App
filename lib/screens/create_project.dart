import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Text("Create a Project"),
          Text("Project Name"),
          Text("Description"),
          Text("Password"),
          Text("Confirm Password"),
          Text("Next")
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController projectNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  "Create a Project",
                  textScaleFactor: 2.0,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  controller: projectNameController,
                  validator: (String value) {
                    if (value.isEmpty) {
                      return "Please enter the project name";
                    }
                  },
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(),
                    labelText: 'Project Name',
                  ),
                ),
              ),
              Text("Description"),
              Text("Password"),
              Text("Confirm Password"),
              RaisedButton(
                onPressed: () {},
                child: Text("Next"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

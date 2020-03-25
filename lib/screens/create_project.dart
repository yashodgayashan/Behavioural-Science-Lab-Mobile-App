import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController projectNameController = TextEditingController();
  TextEditingController projectDescriptionController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Center(
          child: ListView(
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
                    border: OutlineInputBorder(),
                    labelText: 'Project Name',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  controller: projectDescriptionController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Description',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  controller: passwordController,
                  validator: (String value) {
                    if (value.isEmpty) {
                      return "Please enter a password";
                    }
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  controller: confirmPasswordController,
                  validator: (String value) {
                    if (value.isEmpty) {
                      return "Please enter a password";
                    }
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Confirm Password',
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: RaisedButton(
                    onPressed: () {},
                    child: Text("Next"),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

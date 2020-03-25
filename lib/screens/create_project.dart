import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  final String nextButtonText = "Next";
  TextEditingController projectNameController = TextEditingController();
  TextEditingController projectDescriptionController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  var _projectCreateformKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Form(
        key: _projectCreateformKey,
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
                  return null;
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
                obscureText: true,
                controller: passwordController,
                validator: (String value) {
                  if (value.isEmpty) {
                    return "Please enter a password";
                  }else if(value.length < 8){
                    return "Please enter minimum of 8 charactors";
                  }
                  return null;
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
                obscureText: true,
                controller: confirmPasswordController,
                validator: (String value) {
                  if (value.isEmpty) {
                    return "Please enter a password";
                  } else if (value != passwordController.text) {
                    return "Please enter the same password as above";
                  }
                  return null;
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
                child: nextButton(),
              ),
            ),
          ],
        ),
      ),
    );
  }


  Widget nextButton(){
    return RaisedButton(
      onPressed: () {
        nextButtonHandler();
      },
      child: Text(nextButtonText),
    );
  }

  void nextButtonHandler(){
    setState(() {
      if (_projectCreateformKey.currentState.validate()) {
        debugPrint("Okay");
      }
    });
  }
}

import 'package:flutter/material.dart';
import 'package:mobile_interface_tester/screens/create_project.dart';
import 'package:mobile_interface_tester/screens/menu_page.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var _formKey = GlobalKey<FormState>();
  TextEditingController projectNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen[100],
      body: Column(
        children: <Widget>[
          Form(
              key: _formKey,
              child: Expanded(
                child: ListView(
                  children: <Widget>[
                    getLogoImageAssert(context),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 15.0, right: 15.0, top: 15.0),
                      child: TextFormField(
                        controller: projectNameController,
                        validator: (String value) {
                          if (value.isEmpty) {
                            return "Please enter the project name";
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.person),
                          border: OutlineInputBorder(),
                          labelText: 'Project Name',
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 15.0, right: 15.0, top: 15.0),
                      child: TextFormField(
                        controller: passwordController,
                        validator: (String value) {
                          if (value.isEmpty) {
                            return "Please enter the password";
                          } else if (value.length < 8) {
                            return "Please enter minimum of 8 Charactors";
                          }
                          return null;
                        },
                        obscureText: true,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock),
                          border: OutlineInputBorder(),
                          labelText: 'Password',
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, right: 10),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Container(),
                            flex: 3,
                          ),
                          Expanded(
                            child: Row(
                              children: <Widget>[
                                Text(
                                  "Sign in",
                                  textAlign: TextAlign.end,
                                ),
                                IconButton(
                                    icon: CircleAvatar(
                                      child: Icon(Icons.arrow_forward),
                                      backgroundColor: Colors.black,
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        if (_formKey.currentState.validate()) {
                                          Navigator.of(context).push(
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      Menu()));
                                        }
                                      });
                                    }),
                              ],
                            ),
                            flex: 1,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 30, 10, 10),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              width: 10.0,
                            ),
                          ),
                          Text(
                            "Dont you have an account?",
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                          GestureDetector(
                              child: Text("Create",
                                  style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w900)),
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => SignUp()));
                                // do what you need to do when "Click here" gets clicked
                              }),
                          Expanded(
                            child: Container(
                              width: 10.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }

  Widget getLogoImageAssert(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    AssetImage assetImage = AssetImage("assets/logo.png");
    Image image = Image(
      image: assetImage,
      width: size.width * 0.8,
      height: size.height * 0.2,
    );
    return Center(
      child: Container(
        child: image,
        margin: EdgeInsets.only(top: size.height * 0.2),
      ),
    );
  }
}

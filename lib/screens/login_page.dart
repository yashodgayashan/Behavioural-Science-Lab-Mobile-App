import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen[100],
      body: Column(
        children: <Widget>[
          Form(
              child: Expanded(
            child: ListView(
              children: <Widget>[
                getLogoImageAssert(context),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 15.0, right: 15.0, top: 15.0),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      border: OutlineInputBorder(),
                      labelText: 'Project Name',
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 15.0, right: 15.0, top: 15.0),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                  ),
                ),
                Row(
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
                              onPressed: () {}),
                        ],
                      ),
                      flex: 1,
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
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
                          // do what you need to do when "Click here" gets clicked
                        })
                  ],
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

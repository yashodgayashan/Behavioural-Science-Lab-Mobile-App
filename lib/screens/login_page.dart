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
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                  ),
                )
              ],
            ),
          ))
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

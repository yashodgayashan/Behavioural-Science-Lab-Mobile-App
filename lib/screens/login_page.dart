import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          getLogoImageAssert(context),
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

import 'package:flutter/material.dart';
import 'package:mobile_interface_tester/screens/create_project.dart';
import 'package:mobile_interface_tester/screens/menu_page.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  EdgeInsetsGeometry edgeInsetsGeometry =
      EdgeInsets.only(left: 15.0, right: 15.0, top: 15.0);
  var _formKey = GlobalKey<FormState>();
  TextEditingController projectNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen[100],
      body: Column(
        children: <Widget>[getFormAsset(context)],
      ),
    );
  }

  Widget getFormAsset(BuildContext context) {
    return Form(
        key: _formKey,
        child: Expanded(
          child: ListView(
            children: <Widget>[
              getLogoImageAssert(context),
              getProjectNameTextField(context),
              getPasswordTextField(context),
              getSignInButton(context),
              getCreateProjectWidget(context),
            ],
          ),
        ));
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

  Widget getProjectNameTextField(BuildContext context) {
    const String labelName = "Project Name";
    Icon prefixIcon = Icon(Icons.person);
    return Padding(
      padding: edgeInsetsGeometry,
      child: TextFormField(
        controller: projectNameController,
        validator: (String value) {
          if (value.isEmpty) {
            return "Please enter the project name";
          }
          return null;
        },
        decoration: InputDecoration(
          prefixIcon: prefixIcon,
          border: OutlineInputBorder(),
          labelText: labelName,
        ),
      ),
    );
  }

  Widget getPasswordTextField(BuildContext context) {
    const String labelName = "Password";
    Icon prefixIcon = Icon(Icons.lock);
    return Padding(
      padding: edgeInsetsGeometry,
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
          prefixIcon: prefixIcon,
          border: OutlineInputBorder(),
          labelText: labelName,
        ),
      ),
    );
  }

  Widget getSignInButton(BuildContext context) {
    EdgeInsets signInuttonPadding = const EdgeInsets.only(top: 20, right: 10);
    CircleAvatar arrowIcon = CircleAvatar(
      child: Icon(Icons.arrow_forward),
      backgroundColor: Colors.black,
    );
    Text signIn = Text(
      "Sign in",
      textAlign: TextAlign.end,
    ); //Text
    IconButton arrow = IconButton(
        icon: arrowIcon,
        onPressed: () {
          setState(() {
            if (_formKey.currentState.validate()) {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Menu()));
            }
          });
        });
    return Padding(
      padding: signInuttonPadding,
      child: Row(
        children: <Widget>[
          Expanded(
            child: Container(),
            flex: 3,
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                signIn,
                arrow,
              ],
            ),
            flex: 1,
          ),
        ],
      ),
    );
  }

  Widget getCreateProjectWidget(BuildContext context){
    EdgeInsets widgetPadding = const EdgeInsets.fromLTRB(10, 30, 10, 10);
    Text statement = Text(
      "Dont you have an account?",
      style: TextStyle(fontWeight: FontWeight.w600),
    );
    Text createAccountText = Text("Create",
        style: TextStyle(
            decoration: TextDecoration.underline,
            color: Colors.black,
            fontWeight: FontWeight.w900));
    GestureDetector createAccount =GestureDetector(
        child: createAccountText,
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => SignUp()));
          // do what you need to do when "Click here" gets clicked
        });
    return Padding(
      padding: widgetPadding,
      child: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              width: 10.0,
            ),
          ),
          statement,
          createAccount,
          Expanded(
            child: Container(
              width: 10.0,
            ),
          ),
        ],
      ),
    );
  }
}

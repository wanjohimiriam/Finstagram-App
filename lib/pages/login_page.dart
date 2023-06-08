// ignore_for_file: unused_element, prefer_const_constructors

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  State<StatefulWidget> createState() {
    return _LoginPageState();
  }
}

class _LoginPageState extends State<LoginPage> {
  double? dev_height, dev_width;
  @override
  Widget build(BuildContext context) {
    dev_height = MediaQuery.of(context).size.height;
    dev_width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: dev_height! * 0.05),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              _titleWidget(),
              _loginButton(),
            ],
          ),
        ),
      ),
    ));
  }

  Widget _titleWidget() {
    return Text(
      "Finstagram",
      style: TextStyle(
        fontSize: 25,
        color: Colors.black,
        fontWeight: FontWeight.w600,
      ),
    );
  }

  Widget _loginButton() {
    return MaterialButton(
      onPressed: () {},
      minWidth: dev_width! * 0.70,
      height: dev_height! * 0.06,
      color: Colors.red,
      child: Text(
        "Login",
        style: TextStyle(
            color: Colors.white, fontSize: 20, fontWeight: FontWeight.w600),
      ),
    );
  }
}

// ignore_for_file: unused_element, prefer_const_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  State<StatefulWidget> createState() {
    return _LoginPageState();
  }
}

class _LoginPageState extends State<LoginPage> {
  double? dev_height, dev_width;
  final GlobalKey<FormState> _loginFromKey = GlobalKey<FormState>();

  String? email;
  String? password;
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
              _LoginForm(),
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
      onPressed: _LoginUser,
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

  Widget _LoginForm() {
    return Container(
      height: dev_height! * 0.20,
      child: Form(
          key: _loginFromKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              _emailTextForm(),
              _psswordTextForm(),
            ],
          )),
    );
  }

  Widget _emailTextForm() {
    return TextFormField(
      decoration: InputDecoration(
        hintText: "Email",
      ),
      onSaved: (value) {
        setState(() {
          email = value;
        });
      },
      validator: (_value) {
        bool result = _value!.contains(RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+"));

        return result ? null : "Please enter a valid email";
      },
    );
  }

  Widget _psswordTextForm() {
    return TextFormField(
        obscureText: true,
        decoration: InputDecoration(
          hintText: "Password",
        ),
        onSaved: (value) {
          setState(() {
            password = value;
          });
        },
        validator: (_value) => _value!.length > 6
            ? null
            : "Please enter a password greater than 6 characters");
  }

  void _LoginUser() {
    if (_loginFromKey.currentState!.validate()) {
      _loginFromKey.currentState!.save();
    }
  }
}

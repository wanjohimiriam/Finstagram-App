// ignore_for_file: prefer_const_constructors

import 'package:finstagram_app/pages/login_page.dart';
import 'package:finstagram_app/pages/register_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Finstagram App',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      initialRoute: 'login',
      routes: {
        "register": (context) => RegisterPage(),
        "login": (context) => LoginPage()
      },
    );
  }
}


import 'package:flutter/material.dart';
import 'package:projectuas/about.dart';
import 'package:projectuas/login.dart';
import 'dart:async';
import 'home.dart';


class SplashScreenPage extends StatefulWidget {
  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    super.initState();
    startSplashScreen();
  }

  startSplashScreen() async {
    var duration = const Duration(seconds: 2);
    return Timer(duration, () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) {
          return LoginPage();
        }),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(2, 12, 83, 1),
      body: Center(
        child: Image.asset(
          "assets/images/logo.jpg",
          width: 400.0,
          height: 200.0,
        ),
      ),
    );
  }
}
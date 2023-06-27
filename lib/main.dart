import 'package:flutter/material.dart';
import 'package:projectuas/home.dart';
import 'splashscreen.dart';
import 'login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'O-News',
      theme: ThemeData(appBarTheme: AppBarTheme(elevation: 0)),
      home: SplashScreenPage(),
      // routes: <String, WidgetBuilder>{
      //   '/login': (BuildContext context) => new LoginPage(),
      // },
    );
  }
}


import 'package:classemorta/UI/Screens/Home/HomePageWidget.dart';
import 'package:classemorta/UI/SimpleItems/ColorsTemplate.dart';
import 'package:flutter/material.dart';
import 'package:classemorta/UI/Screens/Login/LoginWidget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
           brightness: Brightness.light,
        primaryColor: secondaryLightColor
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: secondaryDarkColor
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}


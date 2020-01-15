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
        primaryColor: Colors.lightBlue
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.cyan
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return MyLoginPage();
  }
}

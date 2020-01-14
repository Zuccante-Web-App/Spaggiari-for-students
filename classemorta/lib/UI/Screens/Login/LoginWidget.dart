import 'package:flutter/material.dart';
import 'package:classemorta/UI/SimpleItems/ColorsTemplate.dart';
import 'TextFieldWidget.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.lightBlue
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: secondaryDarkColor
      ),
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
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 45.0),
              UsernameField(),
            SizedBox(height: 25.0),
              PwField(),
          ],
        ),
      ),
    );
  }
}

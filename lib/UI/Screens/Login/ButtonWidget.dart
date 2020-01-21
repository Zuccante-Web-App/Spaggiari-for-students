import 'package:classemorta/UI/Screens/Login/TextFieldWidget.dart';
import 'package:flutter/material.dart';
import 'package:classemorta/UI/SimpleItems/StyleTemplate.dart';
import 'LoginWidget.dart';

class ButtonLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      padding: EdgeInsets.fromLTRB(45.0, 15.0, 45.0, 15.0),
      onPressed: loginMethod,
      color: Colors.lightBlue,
      shape: RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(20.0)
      ),
      child: Text("Login",
          textAlign: TextAlign.center,
          style: style.copyWith(
              color: Colors.white, fontWeight: FontWeight.bold)),
    );      
  }
}
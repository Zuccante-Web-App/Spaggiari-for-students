import 'package:flutter/material.dart';
import 'package:classemorta/UI/SimpleItems/StyleTemplate.dart';

var padding = EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0);

var border = OutlineInputBorder(borderRadius: BorderRadius.circular(32.0));

TextEditingController username = new TextEditingController();


class UsernameField extends StatelessWidget{


  Widget build(BuildContext buildContext){
    return TextField(
      controller: username,
      style: style, 
      decoration: InputDecoration(
          contentPadding: padding,
          hintText: "Username",
          border: border,
      )
    );
  }
}

TextEditingController pw = new TextEditingController();

class PwField extends StatelessWidget{
   Widget build(BuildContext buildContext){
     return TextField(
        controller: pw,
        obscureText: true,
        style: style,
        decoration: InputDecoration(
          contentPadding: padding,
          hintText: "Password",
          border: border
        )
    );
   }
}
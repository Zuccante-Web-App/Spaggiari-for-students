import 'package:flutter/material.dart';

TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);
var padding = EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0);

var border = OutlineInputBorder(borderRadius: BorderRadius.circular(32.0));

class UsernameField extends StatelessWidget{

  TextEditingController username = new TextEditingController();
 

  Widget build(BuildContext buildContext){
    return TextField(
      style: style, 
      decoration: InputDecoration(
          contentPadding: padding,
          hintText: "Username",
          border: border,
      )
    );
  }
}

class PwField extends StatelessWidget{
   TextEditingController pw = new TextEditingController();

   Widget build(BuildContext buildContext){
     return TextField(
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
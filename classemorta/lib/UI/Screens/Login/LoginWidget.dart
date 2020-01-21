import 'package:classemorta/Service/DataSaving/SharedPrefManager.dart';
import 'package:classemorta/Service/Network/Response.dart';
import 'package:classemorta/Service/Network/Responses/LoginResponse.dart';
import 'ButtonWidget.dart';
import 'package:flutter/material.dart';
import 'package:classemorta/UI/SimpleItems/ColorsTemplate.dart';
import 'TextFieldWidget.dart';
import 'package:classemorta/Service/Network/NetworkRepo.dart';

class MyLoginPage extends StatefulWidget {
  MyLoginPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyLoginPageState createState() => _MyLoginPageState();
}

class _MyLoginPageState extends State<MyLoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(36.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
             /* SizedBox(
                      height: 155.0,
                      child: Image.asset(
                        "assets/logo.png",
                        fit: BoxFit.contain,
                      ),
                    ),
              SizedBox(height: 45.0),*/
              UsernameField(),
              SizedBox(height: 25.0),
              PwField(),
              SizedBox(height: 45.0),
              ButtonLogin(),
            ],
          ),
        ),
      ),
    );
  }
}

//scrivere qui codice login, in seguito richiamarlo dall'onPressed di ButtonWidget (ti ho già importato il file dart)
void loginMethod() {
  String usr = username.text;
  username.clear();

  String pass = pw.text;
  username.clear();
  print("username: $usr");

  NetworkRepo.logIn(usr, pass).then((Response<LoginResponse> response){
    if(response.esit){
      //tutto ok
      print("[INFO] Login succeded!");
      SharedPrefManager.addPref(SharedPrefManager.USERNAME_PREF, usr);
      SharedPrefManager.addPref(SharedPrefManager.PASSWORD_PREF, pass);
      SharedPrefManager.addPref(SharedPrefManager.FIRSTNAME_PREF, response.data.firstName);
      SharedPrefManager.addPref(SharedPrefManager.LASTNAME_PREF, response.data.lastName);
      SharedPrefManager.addPref(SharedPrefManager.STUDENT_ID_PREF, response.data.studentId);
      NetworkRepo.getNoticeBoard(response.data.studentId, response.data.token);
    } else {
      //richiesta fallita/credenziali sbagliate
    }
  });
}

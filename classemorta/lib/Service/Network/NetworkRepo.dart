import 'dart:convert';

import 'Response.dart';
import 'Responses/LoginResponse.dart';
import 'package:http/http.dart' as http;

// api link: https://github.com/michelangelomo/Classeviva-Official-Endpoints

class NetworkRepo {
  static const String _LOGIN_URL = "auth/login";
  static const String _MAIN_URL = "https://web.spaggiari.eu/rest/v1/";
  static const String _GRADES_URL = "students/{studentId}/grades";
  static const String _NOTICEBOARD_URL = "students/{studentId}/noticeboard";
   /* 
   Those are the headers which are needed in every request:
    Content-Type: application/json
    Z-Dev-ApiKey: +zorro+
    User-Agent: zorro/1.0
  */
  static Map<String, String> _headers = {'Content-Type' : "application/json", "Z-Dev-ApiKey" : "+zorro+", "User-Agent" : "zorro/1.0"};
  
  /*
  curl -X POST -d '{"ident":null,"pass":"","uid":"@gmail.com"}' -H 'Content-Type: application/json' -H 'Z-Dev-ApiKey: +zorro+' -H 'User-Agent: zorro/1.0' https://web.spaggiari.eu/rest/v1/auth/login
  */
  /*
    METHOD: POST
    PARAM: none
    DATA REQUIRED:  {"ident":null","pass":"user_pass","uid":"user_id"}
  */
  static Future<Response<LoginResponse>> logIn(final String username, final String password) async {
      Map<String, String> body = {'ident' : null, "pass" : password, "uid" : username };
      String url = _MAIN_URL + _LOGIN_URL;
      http.Response res = await http.post(url, headers: _headers, body: jsonEncode(body));
      print("[INFO] Response from $url : ${res.statusCode}");
      if (res.statusCode < 200 || res.statusCode >= 400) {
          return Response<LoginResponse>(false, null);
      } else {
          return Response<LoginResponse>(true, LoginResponse.fromJson(jsonDecode(res.body)));
      } 
  }


  /*
  METHOD: GET
  PARAMS: inurl userId
  */
  static Future<void> getGrades(final String userID, final String token) async {
     String url = _MAIN_URL + _GRADES_URL.replaceAll("{studentId}", userID.substring(1));
     _headers["Z-Auth-Token"] = token;
     http.Response res = await http.get(url, headers: _headers);
     print("[INFO] Response from $url : ${res.statusCode}");
     print(res.body);
  }

  /*
  METHOD: GET
  PARAMS: inurl userId
  */
  static Future<void> getNoticeBoard(final String userID, final String token) async {
     String url = _MAIN_URL + _NOTICEBOARD_URL.replaceAll("{studentId}", userID.substring(1));
     _headers["Z-Auth-Token"] = token;
     http.Response res = await http.get(url, headers: _headers);
     print("[INFO] Response from $url : ${res.statusCode}");
     print(res.body);
  }
  
}

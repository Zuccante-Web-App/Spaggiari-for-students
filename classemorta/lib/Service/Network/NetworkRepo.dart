import 'dart:convert';

import 'Response.dart';
import 'Responses/LoginResponse.dart';
import 'package:http/http.dart' as http;

class NetworkRepo {
  static const String _LOGIN_URL = "auth/login";
  static const String _MAIN_URL = "https://web.spaggiari.eu/rest/v1/";
  
   /* Those are the headers which are needed in every request 
    Content-Type: application/json
    Z-Dev-ApiKey: +zorro+
    User-Agent: zorro/1.0
  */
  static Map<String, String> _headers = {'Content-Type' : "application/json", "Z-Dev-ApiKey" : "+zorro+", "User-Agent" : "zorro/1.0"};
  
  
  // Data required  {"ident":null","pass":"user_pass","uid":"user_id"}
  static Future<Response<LoginResponse>> logIn(final String username, String password) async {
      Map<String, String> body = {'ident' : 'null', "pass" : password, "uid" : username };
      JsonEncoder je = JsonEncoder();
      String url = _MAIN_URL + _LOGIN_URL;
      http.Response res = await http.post(url, headers: _headers, body: je.convert(body));
      print("[INFO] Response from $url : ${res.statusCode}");
      if (res.statusCode < 200 || res.statusCode >= 400) {
          return Response<LoginResponse>(false, null);
      } else {
          return Response<LoginResponse>(true, null /*TODO*/);
      } 
  }
  
}

import 'Response.dart';
import 'Responses/LoginResponse.dart';
import 'package:http/http.dart' as http;

class NetworkRepo {
  static const String LOGIN_URL = "auth/login";
  static const String MAIN_URL = "https://web.spaggiari.eu/rest/v1/";
  
   /* Those are the headers which are needed in every request 
    Content-Type: application/json
    Z-Dev-ApiKey: +zorro+
    User-Agent: zorro/1.0
  */
  static Map<String, String> headers = {'Content-Type' : "application/json", "Z-Dev_ApiKey" : "+zorro+", "User-Agent" : "zorro/1.0"};
  
  
  // Data required  {"ident":null","pass":"user_pass","uid":"user_id"}
  static Future<Response<LoginResponse>> logIn(final String username, String password) async {
      Map<String, String> body = {'ident' : null, "pass" : password, "uid" : username };      
     await http.post('https://jsonplaceholder.typicode.com/posts/1', body: body).then(
      (res){
         if (res.statusCode < 200 || res.statusCode > 400) {
            return Response(false, null);
         } else {
            return Response(true, null /*TODO*/);
         }
      });
      
  }
  
}

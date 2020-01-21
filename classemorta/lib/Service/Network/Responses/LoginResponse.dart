class LoginResponse {
    String _ident;
    String _firstName;
    String _lastName;
    String _token;
    String _relase;
    String _expire;

    String get firstName => _firstName;
    String get lastName => _lastName;
    String get studentId => _ident;
    String get token => _token;
  
    LoginResponse.fromJson(Map<String, dynamic> json):
      _ident = json["ident"], 
      _firstName = json["firstName"], 
      _lastName = json["lastName"], 
      _token = json["token"], 
      _relase = json["relase"], 
      _expire = json["expire"];
      
  Map<String, dynamic> toJson() =>
    {
      'ident': _ident,
      'firstName': _firstName,
      'lastName': _lastName,
      'token': _token,
      'relase': _relase,
      'expire': _expire,
    };

}

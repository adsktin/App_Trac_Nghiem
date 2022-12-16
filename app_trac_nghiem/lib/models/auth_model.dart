import 'dart:convert';

AuthRespo loginRespFromJson(String str) => AuthRespo.fromJson(json.decode(str));

String loginRespToJson(AuthRespo data) => json.encode(data.toJson());

class AuthRespo {
  AuthRespo({
    required this.accessToken,
    required this.tokenType,
  });

  String accessToken;
  String tokenType;

  factory AuthRespo.fromJson(Map<String, dynamic> json) => AuthRespo(
        accessToken: json["access_token"],
        tokenType: json["token_type"],
      );
  Map<String, dynamic> toJson() => {
        "access_token": accessToken,
        "token_type": tokenType,
      };
}

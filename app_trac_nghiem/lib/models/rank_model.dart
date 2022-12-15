import 'dart:convert';

List<Ranks> ranksFromJson(String str) =>
    List<Ranks>.from(json.decode(str).map((x) => Ranks.fromJson(x)));

String ranksToJson(List<Ranks> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Ranks {
  Ranks({
    required this.id,
    required this.avatar,
    required this.email,
    required this.name,
    required this.totalscore,
    required this.status,
    required this.densRank,
  });

  int id;
  String avatar;
  String email;
  String name;
  int totalscore;
  int status;
  int densRank;

  factory Ranks.fromJson(Map<String, dynamic> json) => Ranks(
        id: json["id"],
        avatar: json["avatar"],
        email: json["email"],
        name: json["name"],
        totalscore: json["totalscore"],
        status: json["status"],
        densRank: json["dens_rank"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "avatar": avatar,
        "email": email,
        "name": name,
        "totalscore": totalscore,
        "status": status,
        "dens_rank": densRank,
      };
}

class User {
  int? id;
  String? name;
  String? avatar;
  String? email;
  String? phone;
  String? dateOfBirth;
  int? totalscore;

  User({
    this.id,
    this.name,
    this.avatar,
    this.email,
    this.phone,
    this.dateOfBirth,
    this.totalscore,
  });

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    avatar = json['avatar'];
    email = json['email'];
    phone = json['phone'];
    dateOfBirth = json['date_of_birth'];
    totalscore = json['totalscore'];
   
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['avatar'] = avatar;
    data['email'] = email;
    data['phone'] = phone;
    data['date_of_birth'] = dateOfBirth;
    data['totalscore'] = totalscore;
    return data;
  }
}

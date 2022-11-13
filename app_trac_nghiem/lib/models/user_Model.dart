// class User {
//   int? id;
//   String? name;
//   String? email;
//   String? password;
//   bool? status;
//   User({this.id, this.email, this.name, this.password, this.status});
//   factory User.fromJson(Map<String, dynamic> json) {
//     if (json == null) return User();
//     return User(
//       id: json['id'],
//       name: json['name'],
//       email: json['email'],
//       password: json['password'],
//       status: json['status'],
//     );
//   }
//   static List<User>? fromJsonList(List list) {
//     if (list == null) return null;
//     return list.map((item) => User.fromJson(item)).toList();
//   }

//   static List<Map<String, dynamic>>? toJsonList(List<User> list) {
//     if (list == null) return null;
//     return list.map((item) => item.toJson()).toList();
//   }

//   Map<String, dynamic> toJson() {
//     Map<String, dynamic> map = {
//       'name': name,
//       'email': email,
//     };
//     return map;
//   }
// }

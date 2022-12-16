class Types {
  int? id;
  String? image;
  String? type;

  Types({this.id, this.image, this.type});

  Types.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    image = json['image'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['image'] = image;
    data['type'] = type;
    return data;
  }
}

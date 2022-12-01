class News {
  int? id;
  String? image;
  String? title;
  String? decription;
  int? status;
  String? deletedAt;
  String? createdAt;
  String? updatedAt;

  News(
      {this.id,
      this.image,
      this.title,
      this.decription,
      this.status,
      this.deletedAt,
      this.createdAt,
      this.updatedAt});

  News.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    image = json['image'];
    title = json['title'];
    decription = json['decription'];
    status = json['status'];
    deletedAt = json['deleted_at'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['image'] = image;
    data['title'] = title;
    data['decription'] = decription;
    data['status'] = status;
    data['deleted_at'] = deletedAt;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}

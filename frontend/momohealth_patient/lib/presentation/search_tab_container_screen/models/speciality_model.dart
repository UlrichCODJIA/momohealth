// Project imports:

class SpecialityModel {
  int? id;
  String? imgPath;
  String? title;
  String? createdAt;
  String? updatedAt;

  SpecialityModel(
      {this.id, this.imgPath, this.title, this.createdAt, this.updatedAt});

  SpecialityModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    imgPath = json['image'];
    title = json['title'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['image'] = imgPath;
    data['title'] = title;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}

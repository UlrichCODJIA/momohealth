class InfoCategorieModel {
  String? image;
  String? name;

  InfoCategorieModel({this.image, this.name});

  InfoCategorieModel.fromJson(Map<String, dynamic> json) {
    image = json['image'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['image'] = image;
    data['name'] = name;
    return data;
  }
}

List<InfoCategorieModel> categories = [
    InfoCategorieModel(image: 'heart_image.png', name: 'Maladie du coeur'),
    InfoCategorieModel(image: 'lung_image.png', name: 'Maladie du poumon'),
    InfoCategorieModel(image: 'kidney_image.png', name: 'Reins'),
    InfoCategorieModel(image: 'skin_image.png', name: 'Peau'),
    InfoCategorieModel(image: 'eye_image.png', name: 'Yeux'),
    InfoCategorieModel(image: 'breast_image.png', name: 'Sein'),
  ];
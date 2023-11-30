class MedicationModel {
  String? medicationId;
  String? name;
  String? description;
  String? price;
  String? available;

  MedicationModel(
      {this.medicationId,
      this.name,
      this.description,
      this.price,
      this.available});

  MedicationModel.fromJson(Map<String, dynamic> json) {
    medicationId = json['id'];
    name = json['name'];
    description = json['description'];
    price = json['price'];
    available = json['available'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.medicationId;
    data['name'] = this.name;
    data['description'] = this.description;
    data['price'] = this.price;
    data['available'] = this.available;
    return data;
  }
}

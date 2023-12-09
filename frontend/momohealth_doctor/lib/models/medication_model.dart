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
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = medicationId;
    data['name'] = name;
    data['description'] = description;
    data['price'] = price;
    data['available'] = available;
    return data;
  }
}

List<MedicationModel> dummyData = [
  MedicationModel(
    medicationId: '1',
    name: 'Paracetamol',
    description: 'Pain reliever and fever reducer',
    price: '5.99',
    available: 'true',
  ),
  MedicationModel(
    medicationId: '2',
    name: 'Ibuprofen',
    description: 'Nonsteroidal anti-inflammatory drug (NSAID)',
    price: '7.49',
    available: 'true',
  ),
  MedicationModel(
    medicationId: '3',
    name: 'Cetirizine',
    description: 'Antihistamine used for allergies',
    price: '4.99',
    available: 'false',
  ),
];

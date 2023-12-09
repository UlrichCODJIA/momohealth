class PrescriptionModel {
  String? prescriptionId;
  String? userId;
  String? medicationId;
  String? quantity;
  String? status;
  DateTime? createdAt;
  DateTime? updatedAt;

  PrescriptionModel(
      {this.prescriptionId,
      this.userId,
      this.medicationId,
      this.quantity,
      this.status,
      this.createdAt,
      this.updatedAt});

  PrescriptionModel.fromJson(Map<String, dynamic> json) {
    prescriptionId = json['id'];
    userId = json['user_id'];
    medicationId = json['medication_id'];
    quantity = json['quantity'];
    status = json['status'];
    createdAt = DateTime.parse("${json['created_at']}");
    updatedAt = DateTime.parse("${json['updated_at']}");
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = prescriptionId;
    data['user_id'] = userId;
    data['medication_id'] = medicationId;
    data['quantity'] = quantity;
    data['status'] = status;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}

// Exemple de données factices pour trois éléments PrescriptionModel
List<PrescriptionModel> dummyData = [
  PrescriptionModel(
    prescriptionId: '1',
    userId: 'user_123',
    medicationId: 'medication_456',
    quantity: '2',
    status: 'Active',
    createdAt: DateTime.parse('2023-12-05T15:30:00Z'),
    updatedAt: DateTime.parse('2023-12-05T15:30:00Z'),
  ),
  PrescriptionModel(
    prescriptionId: '2',
    userId: 'user_456',
    medicationId: 'medication_789',
    quantity: '1',
    status: 'Inactive',
    createdAt: DateTime.parse('2023-12-05T16:45:00Z'),
    updatedAt: DateTime.parse('2023-12-05T16:45:00Z'),
  ),
  PrescriptionModel(
    prescriptionId: '3',
    userId: 'user_789',
    medicationId: 'medication_123',
    quantity: '3',
    status: 'Active',
    createdAt: DateTime.parse('2023-12-05T17:20:00Z'),
    updatedAt: DateTime.parse('2023-12-05T17:20:00Z'),
  ),
];

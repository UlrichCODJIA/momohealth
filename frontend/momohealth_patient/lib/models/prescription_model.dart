class PrescriptionModel {
  String? prescriptionId;
  String? userId;
  String? medicationId;
  String? quantity;
  String? status;
  String? createdAt;
  String? updatedAt;

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
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.prescriptionId;
    data['user_id'] = this.userId;
    data['medication_id'] = this.medicationId;
    data['quantity'] = this.quantity;
    data['status'] = this.status;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}

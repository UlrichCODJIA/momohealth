class ConsultationModel {
  String? consultationId;
  String? appointmentId;
  String? notes;
  String? prescription;
  String? createdAt;

  ConsultationModel(
      {this.consultationId,
      this.appointmentId,
      this.notes,
      this.prescription,
      this.createdAt});

  ConsultationModel.fromJson(Map<String, dynamic> json) {
    consultationId = json['id'];
    appointmentId = json['appointment_id'];
    notes = json['notes'];
    prescription = json['prescription'];
    createdAt = json['created_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.consultationId;
    data['appointment_id'] = this.appointmentId;
    data['notes'] = this.notes;
    data['prescription'] = this.prescription;
    data['created_at'] = this.createdAt;
    return data;
  }
}

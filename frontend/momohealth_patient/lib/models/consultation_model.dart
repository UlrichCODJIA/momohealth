class ConsultationModel {
  String? consultationId;
  String? appointmentId;
  String? notes;
  String? prescription;
  DateTime? createdAt;

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
    createdAt = DateTime.parse("${json['created_at']}");
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = consultationId;
    data['appointment_id'] = appointmentId;
    data['notes'] = notes;
    data['prescription'] = prescription;
    data['created_at'] = createdAt;
    return data;
  }
}

// Exemple de données factices pour trois éléments ConsultationModel
List<ConsultationModel> dummyData = [
  ConsultationModel(
    consultationId: '1',
    appointmentId: 'appointment_123',
    notes: 'Patient complained of headaches.',
    prescription: 'Paracetamol 500mg',
    createdAt: DateTime.parse('2023-12-05T15:30:00Z'),
  ),
  ConsultationModel(
    consultationId: '2',
    appointmentId: 'appointment_456',
    notes: 'Follow-up consultation.',
    prescription: 'Rest advised for 3 days.',
    createdAt: DateTime.parse('2023-12-05T16:45:00Z'),
  ),
  ConsultationModel(
    consultationId: '3',
    appointmentId: 'appointment_789',
    notes: 'Patient had allergic reaction.',
    prescription: 'Antihistamine prescribed.',
    createdAt: DateTime.parse('2023-12-05T17:20:00Z'),
  ),
];

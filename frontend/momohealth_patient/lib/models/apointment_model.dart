import 'user_model.dart';

class AppointmentModel {
  String? appointmentId;
  String? userId;
  UserModel? provider;
  String? scheduledTime;
  String? status;
  DateTime? createdAt;
  DateTime? updatedAt;

  AppointmentModel(
      {this.appointmentId,
      this.userId,
      this.provider,
      this.scheduledTime,
      this.status,
      this.createdAt,
      this.updatedAt});

  AppointmentModel.fromJson(Map<String, dynamic> json) {
    appointmentId = json['id'];
    userId = json['user_id'];
    provider = json['provider_id'];
    scheduledTime = json['scheduled_time'];
    status = json['status'];
    createdAt = DateTime.parse("${json['created_at']}");
    updatedAt = DateTime.parse("${json['updated_at']}");
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = appointmentId;
    data['user_id'] = userId;
    data['provider_id'] = provider;
    data['scheduled_time'] = scheduledTime;
    data['status'] = status;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}

// Exemple de données factices pour trois éléments AppointmentModel
List<AppointmentModel> dummyAppointmentData = [
  AppointmentModel(
    appointmentId: '1',
    userId: 'user_123',
    provider: UserModel(
    id: '123456',
    mobileNumber: '123-456-7890',
    email: 'utilisateur@example.com',
    firstName: 'John',
    lastName: 'Doe',
    isVerified: true,
    createdAt: DateTime.now(),
    updatedAt: DateTime.now(),
  ),
    scheduledTime: '2023-12-10 09:00',
    status: 'Scheduled',
    createdAt: DateTime.parse('2023-12-05T15:30:00Z'),
    updatedAt: DateTime.parse('2023-12-05T15:30:00Z'),
  ),
  AppointmentModel(
    appointmentId: '2',
    userId: 'user_456',
    provider: UserModel(
    id: '123456',
    mobileNumber: '123-456-7890',
    email: 'utilisateur@example.com',
    firstName: 'John',
    lastName: 'Doe',
    isVerified: true,
    createdAt: DateTime.now(),
    updatedAt: DateTime.now(),
  ),
    scheduledTime: '2023-12-12 14:30',
    status: 'Confirmed',
    createdAt: DateTime.parse('2023-12-05T16:45:00Z'),
    updatedAt: DateTime.parse('2023-12-05T16:45:00Z'),
  ),
  AppointmentModel(
    appointmentId: '3',
    userId: 'user_789',
    provider: UserModel(
    id: '123456',
    mobileNumber: '123-456-7890',
    email: 'utilisateur@example.com',
    firstName: 'John',
    lastName: 'Doe',
    isVerified: true,
    createdAt: DateTime.now(),
    updatedAt: DateTime.now(),
  ),
    scheduledTime: '2023-12-15 11:00',
    status: 'Cancelled',
    createdAt: DateTime.parse('2023-12-05T17:20:00Z'),
    updatedAt: DateTime.parse('2023-12-05T17:20:00Z'),
  ),
];

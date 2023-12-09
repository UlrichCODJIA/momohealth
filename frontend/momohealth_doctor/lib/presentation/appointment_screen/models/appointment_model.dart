import '../../../models/user_model.dart';
import 'status_model.dart';

class AppointmentModel {
  String? appointmentId;
  String? userId;
  UserModel? provider;
  DateTime? scheduledTime;
  StatusModel? status;
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
    scheduledTime = DateTime.parse("${json['scheduled_time']}");
    status = statuses.firstWhere((status) => status.value == json['status']);
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

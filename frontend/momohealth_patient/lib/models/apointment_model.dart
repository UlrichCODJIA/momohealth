class AppointmentModel {
  String? appointmentId;
  String? userId;
  String? providerId;
  String? scheduledTime;
  String? status;
  String? createdAt;
  String? updatedAt;

  AppointmentModel(
      {this.appointmentId,
      this.userId,
      this.providerId,
      this.scheduledTime,
      this.status,
      this.createdAt,
      this.updatedAt});

  AppointmentModel.fromJson(Map<String, dynamic> json) {
    appointmentId = json['id'];
    userId = json['user_id'];
    providerId = json['provider_id'];
    scheduledTime = json['scheduled_time'];
    status = json['status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.appointmentId;
    data['user_id'] = this.userId;
    data['provider_id'] = this.providerId;
    data['scheduled_time'] = this.scheduledTime;
    data['status'] = this.status;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}

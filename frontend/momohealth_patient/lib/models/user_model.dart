class UserModel {
  String? id;
  String? mobileNumber;
  String? email;
  String? firstName;
  String? lastName;
  bool? isVerified;
  DateTime? createdAt;
  DateTime? updatedAt;

  UserModel(
      {this.id,
      this.mobileNumber,
      this.email,
      this.firstName,
      this.lastName,
      this.isVerified,
      this.createdAt,
      this.updatedAt});

  UserModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    mobileNumber = json['mobile_number'];
    email = json['email'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    isVerified = json['is_verified'];
    createdAt = DateTime.parse("${json['created_at']}");
    updatedAt = DateTime.parse("${json['updated_at']}");
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['mobile_number'] = mobileNumber;
    data['email'] = email;
    data['first_name'] = firstName;
    data['last_name'] = lastName;
    data['is_verified'] = isVerified;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}

UserModel user = UserModel(
  id: '123456',
  mobileNumber: '123-456-7890',
  email: 'utilisateur@example.com',
  firstName: 'John',
  lastName: 'Doe',
  isVerified: true,
  createdAt: DateTime.now(),
  updatedAt: DateTime.now(),
);

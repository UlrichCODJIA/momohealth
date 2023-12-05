class UserModel {
  String? userId;
  String? username;
  String? email;
  String? passwordHash;
  String? mobileNumber;
  String? isActive;
  DateTime? createdAt;
  String? lastLogin;

  UserModel(
      {this.userId,
      this.username,
      this.email,
      this.passwordHash,
      this.mobileNumber,
      this.isActive,
      this.createdAt,
      this.lastLogin});

  UserModel.fromJson(Map<String, dynamic> json) {
    userId = json['id'];
    username = json['username'];
    email = json['email'];
    passwordHash = json['password_hash'];
    mobileNumber = json['mobile_number'];
    isActive = json['is_active'];
    createdAt = DateTime.parse("${json['created_at']}");
    lastLogin = json['last_login'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = userId;
    data['username'] = username;
    data['email'] = email;
    data['password_hash'] = passwordHash;
    data['mobile_number'] = mobileNumber;
    data['is_active'] = isActive;
    data['created_at'] = createdAt;
    data['last_login'] = lastLogin;
    return data;
  }
}

UserModel user = UserModel(
  userId: '2',
  username: 'LOKO Smith',
  email: 'jane@example.com',
  passwordHash: 'hashed_password_456',
  mobileNumber: '987-654-3210',
  isActive: 'true',
  createdAt: DateTime.parse('2023-12-05T16:45:00Z'),
  lastLogin: '2023-12-05T17:30:00Z',
);

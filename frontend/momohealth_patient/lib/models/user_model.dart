class UserModel {
  String? userId;
  String? username;
  String? email;
  String? passwordHash;
  String? mobileNumber;
  String? isActive;
  String? createdAt;
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
    createdAt = json['created_at'];
    lastLogin = json['last_login'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.userId;
    data['username'] = this.username;
    data['email'] = this.email;
    data['password_hash'] = this.passwordHash;
    data['mobile_number'] = this.mobileNumber;
    data['is_active'] = this.isActive;
    data['created_at'] = this.createdAt;
    data['last_login'] = this.lastLogin;
    return data;
  }
}

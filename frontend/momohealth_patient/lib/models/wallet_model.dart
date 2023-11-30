class WalletModel {
  String? walletId;
  String? userId;
  String? balance;
  String? isActive;
  String? createdAt;

  WalletModel(
      {this.walletId,
      this.userId,
      this.balance,
      this.isActive,
      this.createdAt});

  WalletModel.fromJson(Map<String, dynamic> json) {
    walletId = json['id'];
    userId = json['user_id'];
    balance = json['balance'];
    isActive = json['is_active'];
    createdAt = json['created_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.walletId;
    data['user_id'] = this.userId;
    data['balance'] = this.balance;
    data['is_active'] = this.isActive;
    data['created_at'] = this.createdAt;
    return data;
  }
}

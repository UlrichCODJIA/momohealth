class WalletModel {
  String? walletId;
  String? userId;
  String? balance;
  String? isActive;
  DateTime? createdAt;

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
    createdAt = DateTime.parse("${json['created_at']}");
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = walletId;
    data['user_id'] = userId;
    data['balance'] = balance;
    data['is_active'] = isActive;
    data['created_at'] = createdAt;
    return data;
  }
}

WalletModel wallet = WalletModel(
  walletId: '1',
  userId: 'user_123',
  balance: '150.00',
  isActive: 'true',
  createdAt: DateTime.parse('2023-12-05T15:30:00Z'),
);

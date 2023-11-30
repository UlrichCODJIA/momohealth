class TransactionModel {
  String? transactionId;
  String? walletId;
  String? amount;
  String? transactionType;
  String? description;
  String? createdAt;

  TransactionModel(
      {this.transactionId,
      this.walletId,
      this.amount,
      this.transactionType,
      this.description,
      this.createdAt});

  TransactionModel.fromJson(Map<String, dynamic> json) {
    transactionId = json['id'];
    walletId = json['wallet_id'];
    amount = json['amount'];
    transactionType = json['transaction_type'];
    description = json['description'];
    createdAt = json['created_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.transactionId;
    data['wallet_id'] = this.walletId;
    data['amount'] = this.amount;
    data['transaction_type'] = this.transactionType;
    data['description'] = this.description;
    data['created_at'] = this.createdAt;
    return data;
  }
}

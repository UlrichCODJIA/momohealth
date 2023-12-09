class TransactionModel {
  String? transactionId;
  String? walletId;
  String? amount;
  String? transactionType;
  String? description;
  DateTime? createdAt;

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
    createdAt = DateTime.parse("${json['created_at']}");
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = transactionId;
    data['wallet_id'] = walletId;
    data['amount'] = amount;
    data['transaction_type'] = transactionType;
    data['description'] = description;
    data['created_at'] = createdAt;
    return data;
  }
}



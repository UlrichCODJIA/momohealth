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


// Exemple de données factices pour trois éléments TransactionModel
  List<TransactionModel> transactionDummyData = [
    TransactionModel(
      transactionId: '1',
      walletId: 'wallet_123',
      amount: '50.00',
      transactionType: 'Credit',
      description: 'Received payment',
      createdAt: DateTime.parse('2023-12-05T15:30:00Z'),
    ),
    TransactionModel(
      transactionId: '2',
      walletId: 'wallet_456',
      amount: '30.00',
      transactionType: 'Debit',
      description: 'Purchase at store',
      createdAt: DateTime.parse('2023-12-05T16:45:00Z'),
    ),
    TransactionModel(
      transactionId: '3',
      walletId: 'wallet_789',
      amount: '100.00',
      transactionType: 'Credit',
      description: 'Salary deposit',
      createdAt: DateTime.parse('2023-12-05T17:20:00Z'),
    ),
  ];

class StatusModel {
  String? name;
  String? value;

  StatusModel({this.name, this.value});

  StatusModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['value'] = value;
    return data;
  }
}

List<StatusModel> statuses = [
    StatusModel(name: 'En attente', value: 'pending'),
    StatusModel(name: 'Terminée', value: 'completed'),
    StatusModel(name: 'Annulée', value: 'cancelled'),
  ];
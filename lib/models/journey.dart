import 'package:swiss_public_transport_plugin/models/pass.dart';
class Journey {
  List<Pass> passList;
  String name;
  String category;
  String subcategory;
  String categoryCode;
  String number;
  String operator;
  String to;
  Journey(
      {this.passList,
      this.name,
      this.category,
      this.subcategory,
      this.categoryCode,
      this.number,
      this.operator,
      this.to});
  factory Journey.fromJson(Map<String, dynamic> json) {
    if (json == null) return new Journey();
    var name = json['name'];
    var category = json['category'];
    var subcategory = json['subcategory'];
    var categoryCode = json['categoryCode'];
    var number = json['number'];
    var operator = json['operator'];
    var to = json['to'];
    return new Journey(
      name: name,
      category: category,
      subcategory: subcategory,
      categoryCode: categoryCode,
      number: number,
      operator: operator,
      to: to,
    );
  }
}
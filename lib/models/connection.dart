import 'product.dart';
import 'package:swiss_public_transport_plugin/models/pass.dart';
import 'package:swiss_public_transport_plugin/models/sections.dart';

class Connection {
  Pass from;
  Pass to;
  Set<Product> products = new Set();
  Set<Section> sections = new Set();
  Connection({this.products, this.sections, this.from, this.to});
  factory Connection.fromJson(Map<String, dynamic> json) {
    Set<Product> prods = new Set();
    Set<Section> sects = new Set();
    for (var s in json['products']) {
      var product = new Product();
      product.name = s;
      prods.add(product);
    }
    for (var s in json['sections']) {
      sects.add(new Section.fromJson(s));
    }

    for (var sect in sects) {
      print(sect.arrival.platform);
    }

    return new Connection(
      products: prods,
      sections: sects,
      from: Pass.fromJson(json['from']),
      to: Pass.fromJson(json['to']),
    );
  }
}

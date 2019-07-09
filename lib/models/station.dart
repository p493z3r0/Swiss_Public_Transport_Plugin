import 'package:location/location.dart';

class Station {
  String id;
  String name;
  String score;
  Location coodinate;

  Station({this.id, this.name, this.score, this.coodinate});

  factory Station.fromJson(Map<String, dynamic> json) {
    if (json == null) return new Station();
    String name = json['name'];
    name = name.split('@')[0];
    return Station(
      id: json['id'],
      name: name,
      score: json['score'],
    );
  }
}

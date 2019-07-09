import 'package:swiss_public_transport_plugin/models/pass.dart';
import 'package:swiss_public_transport_plugin/models/journey.dart';
import 'package:swiss_public_transport_plugin/models/walk.dart';

class Section {
  Journey journey;
  Walk walk;
  Pass departure;
  Pass arrival;
  Section({this.journey, this.walk, this.departure, this.arrival});
  factory Section.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      print("Parsing: Section was null");
    }

    return new Section(
      journey: new Journey.fromJson(json['journey']),
      walk: new Walk.fromJson(json['walk']),
      departure: new Pass.fromJson(json['departure']),
      arrival: new Pass.fromJson(json['arrival']),
    );
  }
}

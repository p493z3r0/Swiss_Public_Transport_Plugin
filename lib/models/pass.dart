import 'dart:convert';
import 'package:swiss_public_transport_plugin/models/station.dart';
class Pass {
  static bool _dateTest(String date) {
    if (date == null) {
      //print('Date is null');
    } else {
      if (date.isEmpty) {
        // print('Date is empty');
      } else {
        //print('Date is: ' + date);
        return true;
      }
    }
    return false;
  }

  factory Pass.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      print("Init pass, json was null");
      return new Pass();
    } else {
      print('Continuing pass parsing..');
    }

    var station = new Station.fromJson(json['station']);
    var delay = json['delay'];
    var _platfrom = json['platform'];
    var location = new Station.fromJson(json['location']);
    DateTime arr;
    DateTime dep;
    if (_dateTest(json['arrival'])) {
      arr = DateTime.parse(json['arrival'].toString());
    }
    if (_dateTest(json['departure'])) {
      dep = DateTime.parse(json['departure'].toString());
    }

    return new Pass(
        delay: delay,
        station: station,
        platform: _platfrom,
        location: location,
        departure: dep,
        arrival: arr,
        rawJson: jsonEncode(json));
  }
  Station station;
  DateTime arrival;
  //Timestamp arrivalTimestamp;
  DateTime departure;
  //Timestamp departureTimestamp;
  int delay;
  String platform;
  Station location;
  String rawJson;
  Pass(
      {this.location,
      this.station,
      this.arrival,
      //this.arrivalTimestamp,
      this.departure,
      //this.departureTimestamp,
      this.delay,
      this.platform,
      this.rawJson});
}
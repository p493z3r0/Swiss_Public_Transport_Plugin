import 'dart:async';
import 'dart:convert';
import 'package:swiss_public_transport_plugin/models/timetable.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;

class SwissPublicTransportPlugin {
  static const MethodChannel _channel =
      const MethodChannel('swiss_public_transport_plugin');

  Future<Timetable> getTimeTable(String from, String to) async {
    try {
      var response = await http
          .get('http://transport.opendata.ch/v1/connections?from=$from&to=$to');
      return Timetable.fromJson(json.decode(response.body));
    } catch (error) {
      print("Swiss_Public_Transport_Plugin: ERROR: " + error.toString());
      return new Timetable();
    }
  }
}

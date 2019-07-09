import 'package:swiss_public_transport_plugin/models/station.dart';
import 'package:swiss_public_transport_plugin/models/connection.dart';

class Timetable {
  Station from;
  Station to;
  Set<Connection> connections = new Set();
  Timetable({this.from, this.to, this.connections});
  Connection getValidConnection() {
    if (connections.length >= 0) {
      for (var conn in connections) {
        if (conn.sections.length >= 0) {
          for (var sect in conn.sections) {
            if (sect.journey != null) {
              return conn;
            }
          }
        } else {
          continue;
        }
      }
    } else {
      return null;
    }
    return null;
  }

  factory Timetable.fromJson(Map<String, dynamic> json) {
    var fromStation = new Station.fromJson(json['from']);
    var toStation = new Station.fromJson(json['to']);

    Set<Connection> conns = new Set();
    for (Map<String, dynamic> connect in json['connections']) {
      var connection = new Connection.fromJson(connect);
      conns.add(connection);
    }

    return Timetable(
      from: fromStation,
      to: toStation,
      connections: conns,
    );
  }
}

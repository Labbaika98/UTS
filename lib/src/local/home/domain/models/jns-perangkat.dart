// To parse this JSON data, do
//
//     final city = cityFromJson(jsonString);

import 'dart:convert';

jnsPerangkat jnsPerangkatFromJson(String str) =>
    jnsPerangkat.fromJson(json.decode(str));

String jnsPerangkatToJson(jnsPerangkat data) => json.encode(data.toJson());

class jnsPerangkat {
  jnsPerangkat({
    required this.id,
    // required this.id_jns_patroli,
    required this.jns_perangkat,
    required this.nm_perangkat,
  });

  int? id;
  // String id_jns_patroli;
  String? jns_perangkat;
  String? nm_perangkat;

  factory jnsPerangkat.fromJson(Map<String, dynamic> json) => jnsPerangkat(
        id: json["id"],
        // id_jns_patroli: json["id_jns_patroli"],
        jns_perangkat: json["jns_perangkat"],
        nm_perangkat: json["nm_perangkat"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        // "id_jns_patroli": id_jns_patroli,
        "jns_perangkat": jns_perangkat,
        "nm_perangkat": nm_perangkat,
      };
}

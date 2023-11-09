// To parse this JSON data, do
//
//     final city = cityFromJson(jsonString);

import 'dart:convert';

jnsPatroli jnsPatroliFromJson(String str) =>
    jnsPatroli.fromJson(json.decode(str));

String jnsPatroliToJson(jnsPatroli data) => json.encode(data.toJson());

class jnsPatroli {
  jnsPatroli({
    required this.id,
    required this.jenis_patroli,
  });

  int id;
  String jenis_patroli;

  factory jnsPatroli.fromJson(Map<String, dynamic> json) => jnsPatroli(
        id: json["id"],
        jenis_patroli: json["jenis_patroli"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "jenis_patroli": jenis_patroli,
      };
}

// To parse this JSON data, do
//
//     final city = cityFromJson(jsonString);

import 'dart:convert';

prksPatroli prksPatroliFromJson(String str) =>
    prksPatroli.fromJson(json.decode(str));

String prksPatroliToJson(prksPatroli data) => json.encode(data.toJson());

class prksPatroli {
  prksPatroli({
    required this.id,
    required this.jns_pemeriksaan,
    required this.cara,
    required this.standard,
  });

  int id;
  String jns_pemeriksaan;
  String cara;
  String standard;

  factory prksPatroli.fromJson(Map<String, dynamic> json) => prksPatroli(
        id: json["id"],
        jns_pemeriksaan: json["jns_pemeriksaan"],
        cara: json["cara"],
        standard: json["standard"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "jns_pemeriksaan": jns_pemeriksaan,
        "cara": cara,
        "standard": standard,
      };
}

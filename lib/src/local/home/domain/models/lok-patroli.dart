// To parse this JSON data, do
//
//     final city = cityFromJson(jsonString);

import 'dart:convert';

lokasiPatroli lokasiPatroliFromJson(String str) =>
    lokasiPatroli.fromJson(json.decode(str));

String lokasiPatroliToJson(lokasiPatroli data) => json.encode(data.toJson());

class lokasiPatroli {
  lokasiPatroli({
    required this.id,
    required this.lokasi,
  });

  int id;
  String lokasi;

  factory lokasiPatroli.fromJson(Map<String, dynamic> json) => lokasiPatroli(
        id: json["id"],
        lokasi: json["lokasi"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "lokasi": lokasi,
      };
}

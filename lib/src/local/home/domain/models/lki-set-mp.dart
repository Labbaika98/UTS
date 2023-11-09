// To parse this JSON data, do
//
//     final city = cityFromJson(jsonString);

import 'dart:convert';

lkiSetMp lkiSetMpFromJson(String str) => lkiSetMp.fromJson(json.decode(str));

String lkiSetMpToJson(lkiSetMp data) => json.encode(data.toJson());

class lkiSetMp {
  lkiSetMp({
    required this.nik,
    required this.nama,
  });

  String nik;
  String nama;

  factory lkiSetMp.fromJson(Map<String, dynamic> json) => lkiSetMp(
        nik: json["nik"],
        nama: json["nama"],
      );

  Map<String, dynamic> toJson() => {
        "nik": nik,
        "nama": nama,
      };
}

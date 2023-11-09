// To parse this JSON data, do
//
//     final city = cityFromJson(jsonString);

import 'dart:convert';

lkiCv lkiCvFromJson(String str) => lkiCv.fromJson(json.decode(str));

String lkiCvToJson(lkiCv data) => json.encode(data.toJson());

class lkiCv {
  lkiCv({
    required this.id_cv,
    required this.cv_name,
    required this.ip,
  });

  String id_cv;
  String cv_name;
  String ip;

  factory lkiCv.fromJson(Map<String, dynamic> json) => lkiCv(
        id_cv: json["id_cv"],
        cv_name: json["cv_name"],
        ip: json["ip"],
      );

  Map<String, dynamic> toJson() => {
        "id_cv": id_cv,
        "cv_name": cv_name,
        "ip": ip,
      };
}

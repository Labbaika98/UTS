// To parse this JSON data, do
//
//     final city = cityFromJson(jsonString);

import 'dart:convert';

lkiDefect lkiDefectFromJson(String str) => lkiDefect.fromJson(json.decode(str));

String lkiDefectToJson(lkiDefect data) => json.encode(data.toJson());

class lkiDefect {
  lkiDefect({
    required this.id_dfc,
    required this.Desc_dfc,
    // required this.Are_dfc,
  });

  String id_dfc;
  String Desc_dfc;
  // String Are_dfc;

  factory lkiDefect.fromJson(Map<String, dynamic> json) => lkiDefect(
        id_dfc: json["id_dfc"],
        Desc_dfc: json["Desc_dfc"],
        // Are_dfc: json["Are_dfc"],
      );

  Map<String, dynamic> toJson() => {
        "id": id_dfc,
        "desc": Desc_dfc,
        // "area": Are_dfc,
      };
}

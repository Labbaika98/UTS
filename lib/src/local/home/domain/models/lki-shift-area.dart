// To parse this JSON data, do
//
//     final city = cityFromJson(jsonString);

import 'dart:convert';

lkiShiftArea lkiShiftAreaFromJson(String str) =>
    lkiShiftArea.fromJson(json.decode(str));

String lkiShiftAreaToJson(lkiShiftArea data) => json.encode(data.toJson());

class lkiShiftArea {
  lkiShiftArea({
    required this.id,
    required this.shift,
  });

  int id;
  String shift;

  factory lkiShiftArea.fromJson(Map<String, dynamic> json) => lkiShiftArea(
        id: json["id"],
        shift: json["shift"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "shift": shift,
      };
}

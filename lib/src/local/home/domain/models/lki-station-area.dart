import 'dart:convert';

lkiStationArea lkiStationAreaFromJson(String str) =>
    lkiStationArea.fromJson(json.decode(str));

String lkiStationAreaToJson(lkiStationArea data) => json.encode(data.toJson());

class lkiStationArea {
  final String no_area;
  final String name_area;

  lkiStationArea({
    required this.no_area,
    required this.name_area,
  });

  factory lkiStationArea.fromJson(Map<String, dynamic> json) => lkiStationArea(
        no_area: json["no_area"],
        name_area: json["name_area"],
      );

  Map<String, dynamic> toJson() => {
        "no_area": no_area,
        "name_area": name_area,
      };
}

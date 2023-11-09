import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'app_location.freezed.dart';
part 'app_location.g.dart';

@freezed
@HiveType(typeId: 10)
abstract class AppLocation with _$AppLocation {
  const factory AppLocation({
    @HiveField(0) @JsonKey(name: 'id') int? id,
    @HiveField(1) @JsonKey(name: 'code') String? code,
    @HiveField(2) @JsonKey(name: 'desc_lokasi') String? desc_lokasi,
    @HiveField(3) @JsonKey(name: 'jns_lokasi') String? jns_lokasi,
    @HiveField(4) @JsonKey(name: 'pic_lokasi') String? pic_lokasi,
    @HiveField(5) @JsonKey(name: 'created_at') String? created_at,
    @HiveField(6) @JsonKey(name: 'updated_at') String? updated_at,
  }) = _AppLocation;

  factory AppLocation.fromJson(Map<String, dynamic> json) =>
      _$AppLocationFromJson(json);
}

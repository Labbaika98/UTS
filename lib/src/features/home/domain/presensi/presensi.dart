// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'presensi.freezed.dart';
part 'presensi.g.dart';

@freezed
@HiveType(typeId: 1)
abstract class Presensi with _$Presensi {
  const factory Presensi({
    @HiveField(0) @JsonKey(name: 'nik') String? nik,
    @HiveField(1) @JsonKey(name: 'dept') String? dept,
    @HiveField(2) @JsonKey(name: 'area') String? area,
    @HiveField(3) @JsonKey(name: 'job') String? job,
    @HiveField(4) @JsonKey(name: 'sect') String? sect,
    @HiveField(5) @JsonKey(name: 'tgls') String? tgls,
    @HiveField(6) @JsonKey(name: 'time_in') String? timeIn,
    @HiveField(7) @JsonKey(name: 'time_out') String? timeOut,
    @HiveField(8) @JsonKey(name: 'shift') String? shift,
    @HiveField(9) @JsonKey(name: 'tgl') String? tgl,
    @HiveField(10) @JsonKey(name: 'time_in_formatted') String? timeInFormatted,
    @HiveField(11) @JsonKey(name: 'time_out_formatted') String? timeOutFormatted,
    @HiveField(12) @JsonKey(name: 'diff_time') String? diffTime,
  }) = _Presensi;

  factory Presensi.fromJson(Map<String, dynamic> json) => _$PresensiFromJson(json);
}

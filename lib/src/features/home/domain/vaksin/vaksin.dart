// ignore_for_file: invalid_annotation_target
// ignore_for_file: non_constant_identifier_names
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'vaksin.freezed.dart';
part 'vaksin.g.dart';

@freezed
@HiveType(typeId: 3)
abstract class Vaksin with _$Vaksin {
  const factory Vaksin({
    @HiveField(0) @JsonKey(name: 'nik') String? nik,
    @HiveField(1) @JsonKey(name: 'nama') String? nama,
    @HiveField(2) @JsonKey(name: 'tgl_jawab') String? tgl_jawab,
    @HiveField(3) @JsonKey(name: 'keterangan') String? keterangan,
    @HiveField(4) @JsonKey(name: 'wkt_jawab') String? wkt_jawab,
    @HiveField(5) @JsonKey(name: 'mstatus') String? mstatus,
  }) = _Vaksin;

  factory Vaksin.fromJson(Map<String, dynamic> json) => _$VaksinFromJson(json);
}

// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'cuti.freezed.dart';
part 'cuti.g.dart';

@freezed
@HiveType(typeId: 2)
abstract class Cuti with _$Cuti {
  const factory Cuti({
    @HiveField(0) @JsonKey(name: 'nik') String? nik,
    @HiveField(1) @JsonKey(name: 'tgl') String? tgl,
    @HiveField(2) @JsonKey(name: 'tgl_pengajuan') String? tglPengajuan,
    @HiveField(3) @JsonKey(name: 'keterangan') String? keterangan,
    @HiveField(4) @JsonKey(name: 'jum_hari') String? jumHari,
    @HiveField(5) @JsonKey(name: 'id') int? id,
    @HiveField(6) @JsonKey(name: 'pic_updt') String? picUpdt,
    @HiveField(7) @JsonKey(name: 'tgl_updt') String? tglUpdt,
  }) = _Cuti;

  factory Cuti.fromJson(Map<String, dynamic> json) => _$CutiFromJson(json);
}

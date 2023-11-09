// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'scanner.freezed.dart';
part 'scanner.g.dart';

@freezed
@HiveType(typeId: 5)
abstract class Scanner with _$Scanner {
  const factory Scanner({
    @HiveField(0) @JsonKey(name: 'pic') String? pic,
    @HiveField(1) @JsonKey(name: 'kde_asset') String? kdeAsset,
    @HiveField(2) @JsonKey(name: 'sn') String? sn,
    @HiveField(3) @JsonKey(name: 'os') String? os,
    @HiveField(4) @JsonKey(name: 'manufacture') String? manufacture,
    @HiveField(5) @JsonKey(name: 'pcname') int? pcName,
    @HiveField(6) @JsonKey(name: 'tgl_updt') String? picUpdt,
    @HiveField(7) @JsonKey(name: 'pic_updt') String? tglUpdt,
  }) = _Scanner;

  factory Scanner.fromJson(Map<String, dynamic> json) =>
      _$ScannerFromJson(json);
}

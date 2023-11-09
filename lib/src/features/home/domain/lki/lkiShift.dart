// ignore_for_file: invalid_annotation_target
// import 'dart:ffi';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'lkiShift.freezed.dart';
part 'lkiShift.g.dart';

@freezed
@HiveType(typeId: 1)
abstract class LkiShift with _$LkiShift {
  const factory LkiShift({
    @HiveField(0) @JsonKey(name: 'id') int? id,
    @HiveField(1) @JsonKey(name: 'CV') String? cv,
    @HiveField(2) @JsonKey(name: 'CV_Loding') String? cvLoading,
    @HiveField(3) @JsonKey(name: 'ASSY_NO') String? assyNo,
    @HiveField(4) @JsonKey(name: 'SERIAL_NP') String? serialNp,
    @HiveField(5) @JsonKey(name: 'BARCODE_NP') String? bcNp,
    @HiveField(6) @JsonKey(name: 'PIC_PRD') String? picPrd,
    @HiveField(7) @JsonKey(name: 'TGL_PRD') String? tglPrd,
    @HiveField(8) @JsonKey(name: 'waktu') String? waktu,
    @HiveField(9) @JsonKey(name: 'BARCODE_BOX') String? bcBox,
    @HiveField(10) @JsonKey(name: 'GELOMBANG') String? gelombang,
    @HiveField(11) @JsonKey(name: 'SERIAL_BOX') String? serialBox,
    @HiveField(12) @JsonKey(name: 'PIC_PRN') String? picPrn,
    @HiveField(13) @JsonKey(name: 'TGL_PRN') String? tglPrn,
    @HiveField(14) @JsonKey(name: 'PIC_VER') String? picVer,
    @HiveField(15) @JsonKey(name: 'TGL_VER') String? tglVer,
    @HiveField(16) @JsonKey(name: 'ITEM_VER') String? itmVer,
    @HiveField(17) @JsonKey(name: 'std_box') String? stdBox,
    @HiveField(18) @JsonKey(name: 'carline') String? carline,
    @HiveField(19) @JsonKey(name: 'line_no') String? lineNo,
    @HiveField(20) @JsonKey(name: 'Shift') String? shift,
    @HiveField(21) @JsonKey(name: 'NIK') String? nik,
    @HiveField(22) @JsonKey(name: 'synctoPDA') String? synctoPda,
    @HiveField(23) @JsonKey(name: 'id_cust') String? idCust,
    @HiveField(24) @JsonKey(name: 'area_inst') String? areaInst,
    @HiveField(25) @JsonKey(name: 'id_cv') String? idCv,
    @HiveField(26) @JsonKey(name: 'pm') String? pm,
    @HiveField(27) @JsonKey(name: 'no_area') String? noArea,
    @HiveField(28) @JsonKey(name: 'created_at') String? createdAt,
    @HiveField(29) @JsonKey(name: 'updated_at') String? updatedAt,
  }) = _LkiShift;

  factory LkiShift.fromJson(Map<String, dynamic> json) =>
      _$LkiShiftFromJson(json);
}

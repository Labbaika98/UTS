// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lkiShift.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class LkiShiftAdapter extends TypeAdapter<LkiShift> {
  @override
  final int typeId = 1;

  @override
  LkiShift read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return LkiShift(
      id: fields[0] as int?,
      cv: fields[1] as String?,
      cvLoading: fields[2] as String?,
      assyNo: fields[3] as String?,
      serialNp: fields[4] as String?,
      bcNp: fields[5] as String?,
      picPrd: fields[6] as String?,
      tglPrd: fields[7] as String?,
      waktu: fields[8] as String?,
      bcBox: fields[9] as String?,
      gelombang: fields[10] as String?,
      serialBox: fields[11] as String?,
      picPrn: fields[12] as String?,
      tglPrn: fields[13] as String?,
      picVer: fields[14] as String?,
      tglVer: fields[15] as String?,
      itmVer: fields[16] as String?,
      stdBox: fields[17] as String?,
      carline: fields[18] as String?,
      lineNo: fields[19] as String?,
      shift: fields[20] as String?,
      nik: fields[21] as String?,
      synctoPda: fields[22] as String?,
      idCust: fields[23] as String?,
      areaInst: fields[24] as String?,
      idCv: fields[25] as String?,
      pm: fields[26] as String?,
      noArea: fields[27] as String?,
      createdAt: fields[28] as String?,
      updatedAt: fields[29] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, LkiShift obj) {
    writer
      ..writeByte(30)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.cv)
      ..writeByte(2)
      ..write(obj.cvLoading)
      ..writeByte(3)
      ..write(obj.assyNo)
      ..writeByte(4)
      ..write(obj.serialNp)
      ..writeByte(5)
      ..write(obj.bcNp)
      ..writeByte(6)
      ..write(obj.picPrd)
      ..writeByte(7)
      ..write(obj.tglPrd)
      ..writeByte(8)
      ..write(obj.waktu)
      ..writeByte(9)
      ..write(obj.bcBox)
      ..writeByte(10)
      ..write(obj.gelombang)
      ..writeByte(11)
      ..write(obj.serialBox)
      ..writeByte(12)
      ..write(obj.picPrn)
      ..writeByte(13)
      ..write(obj.tglPrn)
      ..writeByte(14)
      ..write(obj.picVer)
      ..writeByte(15)
      ..write(obj.tglVer)
      ..writeByte(16)
      ..write(obj.itmVer)
      ..writeByte(17)
      ..write(obj.stdBox)
      ..writeByte(18)
      ..write(obj.carline)
      ..writeByte(19)
      ..write(obj.lineNo)
      ..writeByte(20)
      ..write(obj.shift)
      ..writeByte(21)
      ..write(obj.nik)
      ..writeByte(22)
      ..write(obj.synctoPda)
      ..writeByte(23)
      ..write(obj.idCust)
      ..writeByte(24)
      ..write(obj.areaInst)
      ..writeByte(25)
      ..write(obj.idCv)
      ..writeByte(26)
      ..write(obj.pm)
      ..writeByte(27)
      ..write(obj.noArea)
      ..writeByte(28)
      ..write(obj.createdAt)
      ..writeByte(29)
      ..write(obj.updatedAt);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LkiShiftAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LkiShift _$$_LkiShiftFromJson(Map<String, dynamic> json) => _$_LkiShift(
      id: json['id'] as int?,
      cv: json['CV'] as String?,
      cvLoading: json['CV_Loding'] as String?,
      assyNo: json['ASSY_NO'] as String?,
      serialNp: json['SERIAL_NP'] as String?,
      bcNp: json['BARCODE_NP'] as String?,
      picPrd: json['PIC_PRD'] as String?,
      tglPrd: json['TGL_PRD'] as String?,
      waktu: json['waktu'] as String?,
      bcBox: json['BARCODE_BOX'] as String?,
      gelombang: json['GELOMBANG'] as String?,
      serialBox: json['SERIAL_BOX'] as String?,
      picPrn: json['PIC_PRN'] as String?,
      tglPrn: json['TGL_PRN'] as String?,
      picVer: json['PIC_VER'] as String?,
      tglVer: json['TGL_VER'] as String?,
      itmVer: json['ITEM_VER'] as String?,
      stdBox: json['std_box'] as String?,
      carline: json['carline'] as String?,
      lineNo: json['line_no'] as String?,
      shift: json['Shift'] as String?,
      nik: json['NIK'] as String?,
      synctoPda: json['synctoPDA'] as String?,
      idCust: json['id_cust'] as String?,
      areaInst: json['area_inst'] as String?,
      idCv: json['id_cv'] as String?,
      pm: json['pm'] as String?,
      noArea: json['no_area'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$_LkiShiftToJson(_$_LkiShift instance) =>
    <String, dynamic>{
      'id': instance.id,
      'CV': instance.cv,
      'CV_Loding': instance.cvLoading,
      'ASSY_NO': instance.assyNo,
      'SERIAL_NP': instance.serialNp,
      'BARCODE_NP': instance.bcNp,
      'PIC_PRD': instance.picPrd,
      'TGL_PRD': instance.tglPrd,
      'waktu': instance.waktu,
      'BARCODE_BOX': instance.bcBox,
      'GELOMBANG': instance.gelombang,
      'SERIAL_BOX': instance.serialBox,
      'PIC_PRN': instance.picPrn,
      'TGL_PRN': instance.tglPrn,
      'PIC_VER': instance.picVer,
      'TGL_VER': instance.tglVer,
      'ITEM_VER': instance.itmVer,
      'std_box': instance.stdBox,
      'carline': instance.carline,
      'line_no': instance.lineNo,
      'Shift': instance.shift,
      'NIK': instance.nik,
      'synctoPDA': instance.synctoPda,
      'id_cust': instance.idCust,
      'area_inst': instance.areaInst,
      'id_cv': instance.idCv,
      'pm': instance.pm,
      'no_area': instance.noArea,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };

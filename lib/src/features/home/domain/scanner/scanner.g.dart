// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scanner.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ScannerAdapter extends TypeAdapter<Scanner> {
  @override
  final int typeId = 5;

  @override
  Scanner read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Scanner(
      pic: fields[0] as String?,
      kdeAsset: fields[1] as String?,
      sn: fields[2] as String?,
      os: fields[3] as String?,
      manufacture: fields[4] as String?,
      pcName: fields[5] as int?,
      picUpdt: fields[6] as String?,
      tglUpdt: fields[7] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Scanner obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.pic)
      ..writeByte(1)
      ..write(obj.kdeAsset)
      ..writeByte(2)
      ..write(obj.sn)
      ..writeByte(3)
      ..write(obj.os)
      ..writeByte(4)
      ..write(obj.manufacture)
      ..writeByte(5)
      ..write(obj.pcName)
      ..writeByte(6)
      ..write(obj.picUpdt)
      ..writeByte(7)
      ..write(obj.tglUpdt);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ScannerAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Scanner _$$_ScannerFromJson(Map<String, dynamic> json) => _$_Scanner(
      pic: json['pic'] as String?,
      kdeAsset: json['kde_asset'] as String?,
      sn: json['sn'] as String?,
      os: json['os'] as String?,
      manufacture: json['manufacture'] as String?,
      pcName: json['pcname'] as int?,
      picUpdt: json['tgl_updt'] as String?,
      tglUpdt: json['pic_updt'] as String?,
    );

Map<String, dynamic> _$$_ScannerToJson(_$_Scanner instance) =>
    <String, dynamic>{
      'pic': instance.pic,
      'kde_asset': instance.kdeAsset,
      'sn': instance.sn,
      'os': instance.os,
      'manufacture': instance.manufacture,
      'pcname': instance.pcName,
      'tgl_updt': instance.picUpdt,
      'pic_updt': instance.tglUpdt,
    };

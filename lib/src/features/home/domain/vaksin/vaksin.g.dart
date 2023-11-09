// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vaksin.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class VaksinAdapter extends TypeAdapter<Vaksin> {
  @override
  final int typeId = 3;

  @override
  Vaksin read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Vaksin(
      nik: fields[0] as String?,
      nama: fields[1] as String?,
      tgl_jawab: fields[2] as String?,
      keterangan: fields[3] as String?,
      wkt_jawab: fields[4] as String?,
      mstatus: fields[5] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Vaksin obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.nik)
      ..writeByte(1)
      ..write(obj.nama)
      ..writeByte(2)
      ..write(obj.tgl_jawab)
      ..writeByte(3)
      ..write(obj.keterangan)
      ..writeByte(4)
      ..write(obj.wkt_jawab)
      ..writeByte(5)
      ..write(obj.mstatus);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is VaksinAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Vaksin _$$_VaksinFromJson(Map<String, dynamic> json) => _$_Vaksin(
      nik: json['nik'] as String?,
      nama: json['nama'] as String?,
      tgl_jawab: json['tgl_jawab'] as String?,
      keterangan: json['keterangan'] as String?,
      wkt_jawab: json['wkt_jawab'] as String?,
      mstatus: json['mstatus'] as String?,
    );

Map<String, dynamic> _$$_VaksinToJson(_$_Vaksin instance) => <String, dynamic>{
      'nik': instance.nik,
      'nama': instance.nama,
      'tgl_jawab': instance.tgl_jawab,
      'keterangan': instance.keterangan,
      'wkt_jawab': instance.wkt_jawab,
      'mstatus': instance.mstatus,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cuti.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CutiAdapter extends TypeAdapter<Cuti> {
  @override
  final int typeId = 2;

  @override
  Cuti read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Cuti(
      nik: fields[0] as String?,
      tgl: fields[1] as String?,
      tglPengajuan: fields[2] as String?,
      keterangan: fields[3] as String?,
      jumHari: fields[4] as String?,
      id: fields[5] as int?,
      picUpdt: fields[6] as String?,
      tglUpdt: fields[7] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Cuti obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.nik)
      ..writeByte(1)
      ..write(obj.tgl)
      ..writeByte(2)
      ..write(obj.tglPengajuan)
      ..writeByte(3)
      ..write(obj.keterangan)
      ..writeByte(4)
      ..write(obj.jumHari)
      ..writeByte(5)
      ..write(obj.id)
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
      other is CutiAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Cuti _$$_CutiFromJson(Map<String, dynamic> json) => _$_Cuti(
      nik: json['nik'] as String?,
      tgl: json['tgl'] as String?,
      tglPengajuan: json['tgl_pengajuan'] as String?,
      keterangan: json['keterangan'] as String?,
      jumHari: json['jum_hari'] as String?,
      id: json['id'] as int?,
      picUpdt: json['pic_updt'] as String?,
      tglUpdt: json['tgl_updt'] as String?,
    );

Map<String, dynamic> _$$_CutiToJson(_$_Cuti instance) => <String, dynamic>{
      'nik': instance.nik,
      'tgl': instance.tgl,
      'tgl_pengajuan': instance.tglPengajuan,
      'keterangan': instance.keterangan,
      'jum_hari': instance.jumHari,
      'id': instance.id,
      'pic_updt': instance.picUpdt,
      'tgl_updt': instance.tglUpdt,
    };

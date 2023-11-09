// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'almtDom.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AlmtDomisiliAdapter extends TypeAdapter<AlmtDomisili> {
  @override
  final int typeId = 6;

  @override
  AlmtDomisili read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AlmtDomisili(
      nik: fields[0] as String?,
      nama: fields[1] as String?,
      jalan: fields[2] as String?,
      kelurahan: fields[3] as String?,
      kecamatan: fields[4] as String?,
      kabKota: fields[5] as String?,
      propinsi: fields[6] as String?,
      kodePos: fields[7] as String?,
      noTlpn: fields[8] as String?,
      noTlpn1: (fields[9] as List?)?.cast<String>(),
      tgl_create: fields[10] as String?,
      tgl_updt: fields[11] as String?,
      pic_updt: fields[12] as String?,
      status_tt: fields[13] as String?,
      rt: fields[14] as String?,
      rw: fields[15] as String?,
      no_rmh: fields[16] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, AlmtDomisili obj) {
    writer
      ..writeByte(17)
      ..writeByte(0)
      ..write(obj.nik)
      ..writeByte(1)
      ..write(obj.nama)
      ..writeByte(2)
      ..write(obj.jalan)
      ..writeByte(3)
      ..write(obj.kelurahan)
      ..writeByte(4)
      ..write(obj.kecamatan)
      ..writeByte(5)
      ..write(obj.kabKota)
      ..writeByte(6)
      ..write(obj.propinsi)
      ..writeByte(7)
      ..write(obj.kodePos)
      ..writeByte(8)
      ..write(obj.noTlpn)
      ..writeByte(9)
      ..write(obj.noTlpn1)
      ..writeByte(10)
      ..write(obj.tgl_create)
      ..writeByte(11)
      ..write(obj.tgl_updt)
      ..writeByte(12)
      ..write(obj.pic_updt)
      ..writeByte(13)
      ..write(obj.status_tt)
      ..writeByte(14)
      ..write(obj.rt)
      ..writeByte(15)
      ..write(obj.rw)
      ..writeByte(16)
      ..write(obj.no_rmh);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AlmtDomisiliAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AlmtDomisili _$$_AlmtDomisiliFromJson(Map<String, dynamic> json) =>
    _$_AlmtDomisili(
      nik: json['nik'] as String?,
      nama: json['nama'] as String?,
      jalan: json['jalan'] as String?,
      kelurahan: json['kelurahan'] as String?,
      kecamatan: json['kecamatan'] as String?,
      kabKota: json['kab_kota'] as String?,
      propinsi: json['propinsi'] as String?,
      kodePos: json['kode_pos'] as String?,
      noTlpn: json['no_tlpn'] as String?,
      noTlpn1: (json['no_tlpn1'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      tgl_create: json['tgl_create'] as String?,
      tgl_updt: json['tgl_updt'] as String?,
      pic_updt: json['pic_updt'] as String?,
      status_tt: json['status_tt'] as String?,
      rt: json['rt'] as String?,
      rw: json['rw'] as String?,
      no_rmh: json['no_rmh'] as String?,
    );

Map<String, dynamic> _$$_AlmtDomisiliToJson(_$_AlmtDomisili instance) =>
    <String, dynamic>{
      'nik': instance.nik,
      'nama': instance.nama,
      'jalan': instance.jalan,
      'kelurahan': instance.kelurahan,
      'kecamatan': instance.kecamatan,
      'kab_kota': instance.kabKota,
      'propinsi': instance.propinsi,
      'kode_pos': instance.kodePos,
      'no_tlpn': instance.noTlpn,
      'no_tlpn1': instance.noTlpn1,
      'tgl_create': instance.tgl_create,
      'tgl_updt': instance.tgl_updt,
      'pic_updt': instance.pic_updt,
      'status_tt': instance.status_tt,
      'rt': instance.rt,
      'rw': instance.rw,
      'no_rmh': instance.no_rmh,
    };

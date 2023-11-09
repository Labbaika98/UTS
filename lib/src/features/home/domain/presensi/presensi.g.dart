// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'presensi.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PresensiAdapter extends TypeAdapter<Presensi> {
  @override
  final int typeId = 1;

  @override
  Presensi read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Presensi(
      nik: fields[0] as String?,
      dept: fields[1] as String?,
      area: fields[2] as String?,
      job: fields[3] as String?,
      sect: fields[4] as String?,
      tgls: fields[5] as String?,
      timeIn: fields[6] as String?,
      timeOut: fields[7] as String?,
      shift: fields[8] as String?,
      tgl: fields[9] as String?,
      timeInFormatted: fields[10] as String?,
      timeOutFormatted: fields[11] as String?,
      diffTime: fields[12] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Presensi obj) {
    writer
      ..writeByte(13)
      ..writeByte(0)
      ..write(obj.nik)
      ..writeByte(1)
      ..write(obj.dept)
      ..writeByte(2)
      ..write(obj.area)
      ..writeByte(3)
      ..write(obj.job)
      ..writeByte(4)
      ..write(obj.sect)
      ..writeByte(5)
      ..write(obj.tgls)
      ..writeByte(6)
      ..write(obj.timeIn)
      ..writeByte(7)
      ..write(obj.timeOut)
      ..writeByte(8)
      ..write(obj.shift)
      ..writeByte(9)
      ..write(obj.tgl)
      ..writeByte(10)
      ..write(obj.timeInFormatted)
      ..writeByte(11)
      ..write(obj.timeOutFormatted)
      ..writeByte(12)
      ..write(obj.diffTime);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PresensiAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Presensi _$$_PresensiFromJson(Map<String, dynamic> json) => _$_Presensi(
      nik: json['nik'] as String?,
      dept: json['dept'] as String?,
      area: json['area'] as String?,
      job: json['job'] as String?,
      sect: json['sect'] as String?,
      tgls: json['tgls'] as String?,
      timeIn: json['time_in'] as String?,
      timeOut: json['time_out'] as String?,
      shift: json['shift'] as String?,
      tgl: json['tgl'] as String?,
      timeInFormatted: json['time_in_formatted'] as String?,
      timeOutFormatted: json['time_out_formatted'] as String?,
      diffTime: json['diff_time'] as String?,
    );

Map<String, dynamic> _$$_PresensiToJson(_$_Presensi instance) =>
    <String, dynamic>{
      'nik': instance.nik,
      'dept': instance.dept,
      'area': instance.area,
      'job': instance.job,
      'sect': instance.sect,
      'tgls': instance.tgls,
      'time_in': instance.timeIn,
      'time_out': instance.timeOut,
      'shift': instance.shift,
      'tgl': instance.tgl,
      'time_in_formatted': instance.timeInFormatted,
      'time_out_formatted': instance.timeOutFormatted,
      'diff_time': instance.diffTime,
    };

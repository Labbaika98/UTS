// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_location.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AppLocationAdapter extends TypeAdapter<AppLocation> {
  @override
  final int typeId = 10;

  @override
  AppLocation read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AppLocation(
      id: fields[0] as int?,
      code: fields[1] as String?,
      desc_lokasi: fields[2] as String?,
      jns_lokasi: fields[3] as String?,
      pic_lokasi: fields[4] as String?,
      created_at: fields[5] as String?,
      updated_at: fields[6] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, AppLocation obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.code)
      ..writeByte(2)
      ..write(obj.desc_lokasi)
      ..writeByte(3)
      ..write(obj.jns_lokasi)
      ..writeByte(4)
      ..write(obj.pic_lokasi)
      ..writeByte(5)
      ..write(obj.created_at)
      ..writeByte(6)
      ..write(obj.updated_at);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AppLocationAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AppLocation _$$_AppLocationFromJson(Map<String, dynamic> json) =>
    _$_AppLocation(
      id: json['id'] as int?,
      code: json['code'] as String?,
      desc_lokasi: json['desc_lokasi'] as String?,
      jns_lokasi: json['jns_lokasi'] as String?,
      pic_lokasi: json['pic_lokasi'] as String?,
      created_at: json['created_at'] as String?,
      updated_at: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$_AppLocationToJson(_$_AppLocation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'desc_lokasi': instance.desc_lokasi,
      'jns_lokasi': instance.jns_lokasi,
      'pic_lokasi': instance.pic_lokasi,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
    };

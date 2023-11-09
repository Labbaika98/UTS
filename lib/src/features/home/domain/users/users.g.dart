// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UsersAdapter extends TypeAdapter<Users> {
  @override
  final int typeId = 0;

  @override
  Users read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Users(
      nik: fields[0] as String?,
      nama: fields[1] as String?,
      ktp: fields[2] as String?,
      username: fields[3] as String?,
      lastlogin: fields[4] as String?,
      area: fields[5] as String?,
      dept: fields[6] as String?,
      hakakses: fields[7] as String?,
      email: fields[8] as String?,
      appNames: (fields[9] as List?)?.cast<String>(),
      accessToken: fields[10] as String?,
      authorization: fields[11] as String?,
      params: fields[12] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Users obj) {
    writer
      ..writeByte(13)
      ..writeByte(0)
      ..write(obj.nik)
      ..writeByte(1)
      ..write(obj.nama)
      ..writeByte(2)
      ..write(obj.ktp)
      ..writeByte(3)
      ..write(obj.username)
      ..writeByte(4)
      ..write(obj.lastlogin)
      ..writeByte(5)
      ..write(obj.area)
      ..writeByte(6)
      ..write(obj.dept)
      ..writeByte(7)
      ..write(obj.hakakses)
      ..writeByte(8)
      ..write(obj.email)
      ..writeByte(9)
      ..write(obj.appNames)
      ..writeByte(10)
      ..write(obj.accessToken)
      ..writeByte(11)
      ..write(obj.authorization)
      ..writeByte(12)
      ..write(obj.params);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UsersAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Users _$$_UsersFromJson(Map<String, dynamic> json) => _$_Users(
      nik: json['nik'] as String?,
      nama: json['nama'] as String?,
      ktp: json['ktp'] as String?,
      username: json['username'] as String?,
      lastlogin: json['lastlogin'] as String?,
      area: json['area'] as String?,
      dept: json['dept'] as String?,
      hakakses: json['hakakses'] as String?,
      email: json['email'] as String?,
      appNames: (json['app_names'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      accessToken: json['access_token'] as String?,
      authorization: json['authorization'] as String?,
      params: json['params'] as String?,
    );

Map<String, dynamic> _$$_UsersToJson(_$_Users instance) => <String, dynamic>{
      'nik': instance.nik,
      'nama': instance.nama,
      'ktp': instance.ktp,
      'username': instance.username,
      'lastlogin': instance.lastlogin,
      'area': instance.area,
      'dept': instance.dept,
      'hakakses': instance.hakakses,
      'email': instance.email,
      'app_names': instance.appNames,
      'access_token': instance.accessToken,
      'authorization': instance.authorization,
      'params': instance.params,
    };

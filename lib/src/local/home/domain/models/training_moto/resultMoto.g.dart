// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resultMoto.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MotoScanAdapter extends TypeAdapter<MotoScan> {
  @override
  final int typeId = 15;

  @override
  MotoScan read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MotoScan(
      id: fields[0] as int?,
      noDoc: fields[1] as String?,
      item: fields[2] as String?,
      status: fields[3] as String?,
      score: fields[4] as String?,
      picUpdt: fields[5] as String?,
      pictures: fields[6] as String?,
      createdAt: fields[7] as String?,
      updatedAt: fields[8] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, MotoScan obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.noDoc)
      ..writeByte(2)
      ..write(obj.item)
      ..writeByte(3)
      ..write(obj.status)
      ..writeByte(4)
      ..write(obj.score)
      ..writeByte(5)
      ..write(obj.picUpdt)
      ..writeByte(6)
      ..write(obj.pictures)
      ..writeByte(7)
      ..write(obj.createdAt)
      ..writeByte(8)
      ..write(obj.updatedAt);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MotoScanAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

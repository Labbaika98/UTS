// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'masterDoc.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MotoScanAdapter extends TypeAdapter<MotoScan> {
  @override
  final int typeId = 16;

  @override
  MotoScan read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MotoScan(
      id: fields[0] as int?,
      name: fields[1] as String?,
      noDoc: fields[2] as String?,
      sourceDoc: fields[3] as String?,
      picUpdt: fields[4] as String?,
      createdAt: fields[5] as String?,
      updatedAt: fields[6] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, MotoScan obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.noDoc)
      ..writeByte(3)
      ..write(obj.sourceDoc)
      ..writeByte(4)
      ..write(obj.picUpdt)
      ..writeByte(5)
      ..write(obj.createdAt)
      ..writeByte(6)
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

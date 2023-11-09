// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'masterAudit.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MotoScanAdapter extends TypeAdapter<MotoScan> {
  @override
  final int typeId = 17;

  @override
  MotoScan read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MotoScan(
      id: fields[0] as int?,
      category: fields[1] as String?,
      noDoc: fields[2] as String?,
      item: fields[3] as String?,
      score: fields[4] as String?,
      picUpdt: fields[5] as String?,
      createdAt: fields[6] as String?,
      updatedAt: fields[7] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, MotoScan obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.category)
      ..writeByte(2)
      ..write(obj.noDoc)
      ..writeByte(3)
      ..write(obj.item)
      ..writeByte(4)
      ..write(obj.score)
      ..writeByte(5)
      ..write(obj.picUpdt)
      ..writeByte(6)
      ..write(obj.createdAt)
      ..writeByte(7)
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

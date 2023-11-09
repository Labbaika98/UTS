// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lki.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class LkiScanAdapter extends TypeAdapter<LkiScan> {
  @override
  final int typeId = 14;

  @override
  LkiScan read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return LkiScan(
      tglProduksi: fields[0] as String?,
      shift: fields[1] as String,
      cv: fields[2] as String?,
      nik: fields[3] as String?,
      area: fields[4] as String?,
      ip: fields[5] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, LkiScan obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.tglProduksi)
      ..writeByte(1)
      ..write(obj.shift)
      ..writeByte(2)
      ..write(obj.cv)
      ..writeByte(3)
      ..write(obj.nik)
      ..writeByte(4)
      ..write(obj.area)
      ..writeByte(5)
      ..write(obj.ip);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LkiScanAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

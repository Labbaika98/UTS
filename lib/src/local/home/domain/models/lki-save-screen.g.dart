// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lki-save-screen.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class LkiSaveScanAdapter extends TypeAdapter<LkiSaveScan> {
  @override
  final int typeId = 16;

  @override
  LkiSaveScan read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return LkiSaveScan(
      status: fields[0] as String?,
      barcode_np: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, LkiSaveScan obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.status)
      ..writeByte(1)
      ..write(obj.barcode_np);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LkiSaveScanAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scan-np.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ScanNpAdapter extends TypeAdapter<ScanNp> {
  @override
  final int typeId = 17;

  @override
  ScanNp read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ScanNp(
      Assy_no: fields[0] as String?,
      Qty: fields[1] as String,
      shift: fields[2] as String?,
      Tgl: fields[3] as String?,
      cv: fields[4] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, ScanNp obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.Assy_no)
      ..writeByte(1)
      ..write(obj.Qty)
      ..writeByte(2)
      ..write(obj.shift)
      ..writeByte(3)
      ..write(obj.Tgl)
      ..writeByte(4)
      ..write(obj.cv);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ScanNpAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

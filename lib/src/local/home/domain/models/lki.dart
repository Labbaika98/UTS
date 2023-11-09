import 'package:hive/hive.dart';

part 'lki.g.dart';

@HiveType(typeId: 14)
// @HiveType(typeId: 11)
class LkiScan {
  @HiveField(0)
  final String? tglProduksi; //itemcode
  @HiveField(1)
  final String shift;
  @HiveField(2)
  final String? cv;
  @HiveField(3)
  final String? nik;
  @HiveField(4)
  final String? area;
  @HiveField(5)
  final String? ip;

  LkiScan(
      {required this.tglProduksi,
      required this.shift,
      required this.cv,
      required this.nik,
      this.area,
      this.ip});
}

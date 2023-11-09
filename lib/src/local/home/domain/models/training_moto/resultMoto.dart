import 'package:hive/hive.dart';

part 'resultMoto.g.dart';

@HiveType(typeId: 15)
// @HiveType(typeId: 15)
class MotoScan {
  @HiveField(0)
  final int? id; //itemcode
  @HiveField(1)
  final String? noDoc;
  @HiveField(2)
  final String? item;
  @HiveField(3)
  final String? status;
  @HiveField(4)
  final String? score;
  @HiveField(5)
  final String? picUpdt;
  @HiveField(6)
  final String? pictures;
  @HiveField(7)
  final String? createdAt;
  @HiveField(8)
  final String? updatedAt;

  MotoScan(
      {this.id,
      this.noDoc,
      this.item,
      this.status,
      this.score,
      this.picUpdt,
      this.pictures,
      this.createdAt,
      this.updatedAt});
}

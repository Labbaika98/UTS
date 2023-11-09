import 'package:hive/hive.dart';

part 'masterAudit.g.dart';

@HiveType(typeId: 17)
// @HiveType(typeId: 17)
class MotoScan {
  @HiveField(0)
  final int? id; //itemcode
  @HiveField(1)
  final String? category;
  @HiveField(2)
  final String? noDoc;
  @HiveField(3)
  final String? item;
  @HiveField(4)
  final String? score;
  @HiveField(5)
  final String? picUpdt;
  @HiveField(6)
  final String? createdAt;
  @HiveField(7)
  final String? updatedAt;

  MotoScan(
      {this.id,
      this.category,
      this.noDoc,
      this.item,
      this.score,
      this.picUpdt,
      this.createdAt,
      this.updatedAt});
}

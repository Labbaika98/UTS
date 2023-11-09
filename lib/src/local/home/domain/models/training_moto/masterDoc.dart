import 'package:hive/hive.dart';

part 'masterDoc.g.dart';

@HiveType(typeId: 16)
// @HiveType(typeId: 16)
class MotoScan {
  @HiveField(0)
  final int? id; //itemcode
  @HiveField(1)
  final String? name;
  @HiveField(2)
  final String? noDoc;
  @HiveField(3)
  final String? sourceDoc;
  @HiveField(4)
  final String? picUpdt;
  @HiveField(5)
  final String? createdAt;
  @HiveField(6)
  final String? updatedAt;

  MotoScan(
      {this.id,
      this.name,
      this.noDoc,
      this.sourceDoc,
      this.picUpdt,
      this.createdAt,
      this.updatedAt});
}

import 'package:hive/hive.dart';

part 'scan-np.g.dart';

@HiveType(typeId: 17)
// @HiveType(typeId: 11)
class ScanNp {
  @HiveField(0)
  final String? Assy_no; //itemcode
  @HiveField(1)
  final String? Qty;
  @HiveField(2)
  final String? shift;
  @HiveField(3)
  final String? Tgl;
  @HiveField(4)
  final String? cv;

  ScanNp({
    this.Assy_no,
    this.Qty,
    this.shift,
    this.Tgl,
    this.cv,
  });
}

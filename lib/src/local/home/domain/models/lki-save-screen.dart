import 'package:hive/hive.dart';

part 'lki-save-screen.g.dart';

@HiveType(typeId: 16)
// @HiveType(typeId: 11)
class LkiSaveScan {
  @HiveField(0)
  final String? status; //itemcode
  @HiveField(1)
  final String barcode_np;

  LkiSaveScan({
    required this.status,
    required this.barcode_np,
  });
}

import 'package:hive_flutter/hive_flutter.dart';

class LkiData {
  List lkiDataList = [];

  final _myBox = Hive.box('lkiSaveBox');

  void createInitialData() {
    lkiDataList = [];
  }

  void loadData() {
    lkiDataList = _myBox.get("LKI_SAVE");
  }

  //update data
  void updateData() {
    _myBox.put("LKI_SAVE", lkiDataList);
  }
}

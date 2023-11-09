// ignore_for_file: unused_import, unused_local_variable

import 'dart:io';
import 'dart:async';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';
import 'package:path_provider/path_provider.dart';
import 'package:labbaika/src/features/home/domain/cuti/cuti.dart';
import 'package:labbaika/src/features/home/domain/presensi/presensi.dart';
import 'package:labbaika/src/features/home/domain/users/users.dart';
import 'package:labbaika/src/features/home/domain/vaksin/vaksin.dart';
import 'package:labbaika/src/local/home/domain/app_location/app_location.dart';
import 'package:labbaika/src/local/home/domain/models/lki-save-screen.dart';
import 'package:labbaika/src/local/home/domain/models/lki.dart';

import 'src/app.dart';

Future<void> main() async {
  //InitFirebase

  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();
  Hive.registerAdapter(UsersAdapter());
  Hive.registerAdapter(PresensiAdapter());
  Hive.registerAdapter(CutiAdapter());
  Hive.registerAdapter(VaksinAdapter());
  Hive.registerAdapter(AppLocationAdapter());
  Hive.registerAdapter(LkiScanAdapter());
  Hive.registerAdapter(LkiSaveScanAdapter());
  await Hive.openBox('patroliBox');
  await Hive.openBox('Todo');
  await Hive.openBox('boxHistory');
  var box = await Hive.openBox('lkiSaveBox');
  await Hive.openBox<LkiScan>('lkiBox');
  await Hive.openBox('saveKanban');

  await dotenv.load(fileName: ".env");
  const myApp = MyApp();
  runApp(
    const ProviderScope(child: myApp),
  );
}

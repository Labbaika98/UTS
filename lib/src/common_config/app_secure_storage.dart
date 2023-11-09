import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class AppSecureStorage {
  static const storage = FlutterSecureStorage();
  static const _keyToken = 'key';
  static const _keyAuthorization = 'auth';
  // static const _keyNik = 'nik';
  static const _keyParams = 'params';

  static Future setToken(String value) async {
    await storage.write(key: _keyToken, value: value);
  }

  static Future getToken() async {
    return await storage.read(key: _keyToken);
  }

  static Future setAuth(String value) async {
    await storage.write(key: _keyAuthorization, value: value);
  }

  static Future getAuth() async {
    return await storage.read(key: _keyAuthorization);
  }

  static Future setParams(String value) async {
    await storage.write(key: _keyParams, value: value);
  }

  static Future getParams() async {
    return await storage.read(key: _keyParams);
  }

  // static Future setNik(String value) async {
  //   await storage.write(key: _keyNik, value: value);
  // }

  // static Future getNik() async {
  //   return await storage.read(key: _keyNik);
  // }
}

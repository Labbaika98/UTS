import 'dart:convert';

import 'package:hive_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:labbaika/src/core/client/dio_client.dart';
import 'package:labbaika/src/features/home/domain/users/users.dart';
// import 'package:basic_utils/basic_utils.dart';

class SignInController extends StateNotifier<Users> {
  SignInController() : super(const Users());

  Future<Box> openBox() async {
    Box box = await Hive.openBox<Users>('users');
    return box;
  }

  Future<void> login(
      {required String username,
      required String password,
      required String role,
      required String location,
      required Box box}) async {
    var resp = await DioClient().apiCall(
      url: '/login',
      requestType: RequestType.post,
      body: {
        "username": username,
        "password": password,
        "role": role,
        "location": location,
      },
    );

    String auth = '$username:$password:$role';
    String encodeAuth = base64Encode(utf8.encode(auth));
    Map<String, dynamic> data = resp.data['data'];

    data['access_token'] = resp.data['access_token'];
    data['authorization'] = encodeAuth;
    data['message'] = resp.data['message'];

    // data['params'] = UrlSearchParams(auth);

    state = Users.fromJson(data);
    box.put(0, state);
  }

  Future<void> logout({required Box box}) async {
    state = const Users();
    box.put(0, state);
  }

  void setUsers(Box box) {
    Users users = box.values.first;
    state = users;
  }
}

final signInControllerProvider = StateNotifierProvider<SignInController, Users>(
  (ref) => SignInController(),
);

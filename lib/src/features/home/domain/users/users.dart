// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'users.freezed.dart';
part 'users.g.dart';

@freezed
@HiveType(typeId: 0)
abstract class Users with _$Users {
  const factory Users({
    @HiveField(0) @JsonKey(name: 'nik') String? nik,
    @HiveField(1) @JsonKey(name: 'nama') String? nama,
    @HiveField(2) @JsonKey(name: 'ktp') String? ktp,
    @HiveField(3) @JsonKey(name: 'username') String? username,
    @HiveField(4) @JsonKey(name: 'lastlogin') String? lastlogin,
    @HiveField(5) @JsonKey(name: 'area') String? area,
    @HiveField(6) @JsonKey(name: 'dept') String? dept,
    @HiveField(7) @JsonKey(name: 'hakakses') String? hakakses,
    @HiveField(8) @JsonKey(name: 'email') String? email,
    @HiveField(9) @JsonKey(name: 'app_names') List<String>? appNames,
    @HiveField(10) @JsonKey(name: 'access_token') String? accessToken,
    @HiveField(11) @JsonKey(name: 'authorization') String? authorization,
    @HiveField(12) @JsonKey(name: 'params') String? params,
  }) = _Users;

  factory Users.fromJson(Map<String, dynamic> json) => _$UsersFromJson(json);
}

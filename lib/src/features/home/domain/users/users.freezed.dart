// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'users.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Users _$UsersFromJson(Map<String, dynamic> json) {
  return _Users.fromJson(json);
}

/// @nodoc
mixin _$Users {
  @HiveField(0)
  @JsonKey(name: 'nik')
  String? get nik => throw _privateConstructorUsedError;
  @HiveField(1)
  @JsonKey(name: 'nama')
  String? get nama => throw _privateConstructorUsedError;
  @HiveField(2)
  @JsonKey(name: 'ktp')
  String? get ktp => throw _privateConstructorUsedError;
  @HiveField(3)
  @JsonKey(name: 'username')
  String? get username => throw _privateConstructorUsedError;
  @HiveField(4)
  @JsonKey(name: 'lastlogin')
  String? get lastlogin => throw _privateConstructorUsedError;
  @HiveField(5)
  @JsonKey(name: 'area')
  String? get area => throw _privateConstructorUsedError;
  @HiveField(6)
  @JsonKey(name: 'dept')
  String? get dept => throw _privateConstructorUsedError;
  @HiveField(7)
  @JsonKey(name: 'hakakses')
  String? get hakakses => throw _privateConstructorUsedError;
  @HiveField(8)
  @JsonKey(name: 'email')
  String? get email => throw _privateConstructorUsedError;
  @HiveField(9)
  @JsonKey(name: 'app_names')
  List<String>? get appNames => throw _privateConstructorUsedError;
  @HiveField(10)
  @JsonKey(name: 'access_token')
  String? get accessToken => throw _privateConstructorUsedError;
  @HiveField(11)
  @JsonKey(name: 'authorization')
  String? get authorization => throw _privateConstructorUsedError;
  @HiveField(12)
  @JsonKey(name: 'params')
  String? get params => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UsersCopyWith<Users> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsersCopyWith<$Res> {
  factory $UsersCopyWith(Users value, $Res Function(Users) then) =
      _$UsersCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) @JsonKey(name: 'nik') String? nik,
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
      @HiveField(12) @JsonKey(name: 'params') String? params});
}

/// @nodoc
class _$UsersCopyWithImpl<$Res> implements $UsersCopyWith<$Res> {
  _$UsersCopyWithImpl(this._value, this._then);

  final Users _value;
  // ignore: unused_field
  final $Res Function(Users) _then;

  @override
  $Res call({
    Object? nik = freezed,
    Object? nama = freezed,
    Object? ktp = freezed,
    Object? username = freezed,
    Object? lastlogin = freezed,
    Object? area = freezed,
    Object? dept = freezed,
    Object? hakakses = freezed,
    Object? email = freezed,
    Object? appNames = freezed,
    Object? accessToken = freezed,
    Object? authorization = freezed,
    Object? params = freezed,
  }) {
    return _then(_value.copyWith(
      nik: nik == freezed
          ? _value.nik
          : nik // ignore: cast_nullable_to_non_nullable
              as String?,
      nama: nama == freezed
          ? _value.nama
          : nama // ignore: cast_nullable_to_non_nullable
              as String?,
      ktp: ktp == freezed
          ? _value.ktp
          : ktp // ignore: cast_nullable_to_non_nullable
              as String?,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      lastlogin: lastlogin == freezed
          ? _value.lastlogin
          : lastlogin // ignore: cast_nullable_to_non_nullable
              as String?,
      area: area == freezed
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as String?,
      dept: dept == freezed
          ? _value.dept
          : dept // ignore: cast_nullable_to_non_nullable
              as String?,
      hakakses: hakakses == freezed
          ? _value.hakakses
          : hakakses // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      appNames: appNames == freezed
          ? _value.appNames
          : appNames // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      accessToken: accessToken == freezed
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      authorization: authorization == freezed
          ? _value.authorization
          : authorization // ignore: cast_nullable_to_non_nullable
              as String?,
      params: params == freezed
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_UsersCopyWith<$Res> implements $UsersCopyWith<$Res> {
  factory _$$_UsersCopyWith(_$_Users value, $Res Function(_$_Users) then) =
      __$$_UsersCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) @JsonKey(name: 'nik') String? nik,
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
      @HiveField(12) @JsonKey(name: 'params') String? params});
}

/// @nodoc
class __$$_UsersCopyWithImpl<$Res> extends _$UsersCopyWithImpl<$Res>
    implements _$$_UsersCopyWith<$Res> {
  __$$_UsersCopyWithImpl(_$_Users _value, $Res Function(_$_Users) _then)
      : super(_value, (v) => _then(v as _$_Users));

  @override
  _$_Users get _value => super._value as _$_Users;

  @override
  $Res call({
    Object? nik = freezed,
    Object? nama = freezed,
    Object? ktp = freezed,
    Object? username = freezed,
    Object? lastlogin = freezed,
    Object? area = freezed,
    Object? dept = freezed,
    Object? hakakses = freezed,
    Object? email = freezed,
    Object? appNames = freezed,
    Object? accessToken = freezed,
    Object? authorization = freezed,
    Object? params = freezed,
  }) {
    return _then(_$_Users(
      nik: nik == freezed
          ? _value.nik
          : nik // ignore: cast_nullable_to_non_nullable
              as String?,
      nama: nama == freezed
          ? _value.nama
          : nama // ignore: cast_nullable_to_non_nullable
              as String?,
      ktp: ktp == freezed
          ? _value.ktp
          : ktp // ignore: cast_nullable_to_non_nullable
              as String?,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      lastlogin: lastlogin == freezed
          ? _value.lastlogin
          : lastlogin // ignore: cast_nullable_to_non_nullable
              as String?,
      area: area == freezed
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as String?,
      dept: dept == freezed
          ? _value.dept
          : dept // ignore: cast_nullable_to_non_nullable
              as String?,
      hakakses: hakakses == freezed
          ? _value.hakakses
          : hakakses // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      appNames: appNames == freezed
          ? _value._appNames
          : appNames // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      accessToken: accessToken == freezed
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      authorization: authorization == freezed
          ? _value.authorization
          : authorization // ignore: cast_nullable_to_non_nullable
              as String?,
      params: params == freezed
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Users implements _Users {
  const _$_Users(
      {@HiveField(0) @JsonKey(name: 'nik') this.nik,
      @HiveField(1) @JsonKey(name: 'nama') this.nama,
      @HiveField(2) @JsonKey(name: 'ktp') this.ktp,
      @HiveField(3) @JsonKey(name: 'username') this.username,
      @HiveField(4) @JsonKey(name: 'lastlogin') this.lastlogin,
      @HiveField(5) @JsonKey(name: 'area') this.area,
      @HiveField(6) @JsonKey(name: 'dept') this.dept,
      @HiveField(7) @JsonKey(name: 'hakakses') this.hakakses,
      @HiveField(8) @JsonKey(name: 'email') this.email,
      @HiveField(9) @JsonKey(name: 'app_names') final List<String>? appNames,
      @HiveField(10) @JsonKey(name: 'access_token') this.accessToken,
      @HiveField(11) @JsonKey(name: 'authorization') this.authorization,
      @HiveField(12) @JsonKey(name: 'params') this.params})
      : _appNames = appNames;

  factory _$_Users.fromJson(Map<String, dynamic> json) =>
      _$$_UsersFromJson(json);

  @override
  @HiveField(0)
  @JsonKey(name: 'nik')
  final String? nik;
  @override
  @HiveField(1)
  @JsonKey(name: 'nama')
  final String? nama;
  @override
  @HiveField(2)
  @JsonKey(name: 'ktp')
  final String? ktp;
  @override
  @HiveField(3)
  @JsonKey(name: 'username')
  final String? username;
  @override
  @HiveField(4)
  @JsonKey(name: 'lastlogin')
  final String? lastlogin;
  @override
  @HiveField(5)
  @JsonKey(name: 'area')
  final String? area;
  @override
  @HiveField(6)
  @JsonKey(name: 'dept')
  final String? dept;
  @override
  @HiveField(7)
  @JsonKey(name: 'hakakses')
  final String? hakakses;
  @override
  @HiveField(8)
  @JsonKey(name: 'email')
  final String? email;
  final List<String>? _appNames;
  @override
  @HiveField(9)
  @JsonKey(name: 'app_names')
  List<String>? get appNames {
    final value = _appNames;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @HiveField(10)
  @JsonKey(name: 'access_token')
  final String? accessToken;
  @override
  @HiveField(11)
  @JsonKey(name: 'authorization')
  final String? authorization;
  @override
  @HiveField(12)
  @JsonKey(name: 'params')
  final String? params;

  @override
  String toString() {
    return 'Users(nik: $nik, nama: $nama, ktp: $ktp, username: $username, lastlogin: $lastlogin, area: $area, dept: $dept, hakakses: $hakakses, email: $email, appNames: $appNames, accessToken: $accessToken, authorization: $authorization, params: $params)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Users &&
            const DeepCollectionEquality().equals(other.nik, nik) &&
            const DeepCollectionEquality().equals(other.nama, nama) &&
            const DeepCollectionEquality().equals(other.ktp, ktp) &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality().equals(other.lastlogin, lastlogin) &&
            const DeepCollectionEquality().equals(other.area, area) &&
            const DeepCollectionEquality().equals(other.dept, dept) &&
            const DeepCollectionEquality().equals(other.hakakses, hakakses) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other._appNames, _appNames) &&
            const DeepCollectionEquality()
                .equals(other.accessToken, accessToken) &&
            const DeepCollectionEquality()
                .equals(other.authorization, authorization) &&
            const DeepCollectionEquality().equals(other.params, params));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(nik),
      const DeepCollectionEquality().hash(nama),
      const DeepCollectionEquality().hash(ktp),
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(lastlogin),
      const DeepCollectionEquality().hash(area),
      const DeepCollectionEquality().hash(dept),
      const DeepCollectionEquality().hash(hakakses),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(_appNames),
      const DeepCollectionEquality().hash(accessToken),
      const DeepCollectionEquality().hash(authorization),
      const DeepCollectionEquality().hash(params));

  @JsonKey(ignore: true)
  @override
  _$$_UsersCopyWith<_$_Users> get copyWith =>
      __$$_UsersCopyWithImpl<_$_Users>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UsersToJson(
      this,
    );
  }
}

abstract class _Users implements Users {
  const factory _Users(
      {@HiveField(0)
      @JsonKey(name: 'nik')
          final String? nik,
      @HiveField(1)
      @JsonKey(name: 'nama')
          final String? nama,
      @HiveField(2)
      @JsonKey(name: 'ktp')
          final String? ktp,
      @HiveField(3)
      @JsonKey(name: 'username')
          final String? username,
      @HiveField(4)
      @JsonKey(name: 'lastlogin')
          final String? lastlogin,
      @HiveField(5)
      @JsonKey(name: 'area')
          final String? area,
      @HiveField(6)
      @JsonKey(name: 'dept')
          final String? dept,
      @HiveField(7)
      @JsonKey(name: 'hakakses')
          final String? hakakses,
      @HiveField(8)
      @JsonKey(name: 'email')
          final String? email,
      @HiveField(9)
      @JsonKey(name: 'app_names')
          final List<String>? appNames,
      @HiveField(10)
      @JsonKey(name: 'access_token')
          final String? accessToken,
      @HiveField(11)
      @JsonKey(name: 'authorization')
          final String? authorization,
      @HiveField(12)
      @JsonKey(name: 'params')
          final String? params}) = _$_Users;

  factory _Users.fromJson(Map<String, dynamic> json) = _$_Users.fromJson;

  @override
  @HiveField(0)
  @JsonKey(name: 'nik')
  String? get nik;
  @override
  @HiveField(1)
  @JsonKey(name: 'nama')
  String? get nama;
  @override
  @HiveField(2)
  @JsonKey(name: 'ktp')
  String? get ktp;
  @override
  @HiveField(3)
  @JsonKey(name: 'username')
  String? get username;
  @override
  @HiveField(4)
  @JsonKey(name: 'lastlogin')
  String? get lastlogin;
  @override
  @HiveField(5)
  @JsonKey(name: 'area')
  String? get area;
  @override
  @HiveField(6)
  @JsonKey(name: 'dept')
  String? get dept;
  @override
  @HiveField(7)
  @JsonKey(name: 'hakakses')
  String? get hakakses;
  @override
  @HiveField(8)
  @JsonKey(name: 'email')
  String? get email;
  @override
  @HiveField(9)
  @JsonKey(name: 'app_names')
  List<String>? get appNames;
  @override
  @HiveField(10)
  @JsonKey(name: 'access_token')
  String? get accessToken;
  @override
  @HiveField(11)
  @JsonKey(name: 'authorization')
  String? get authorization;
  @override
  @HiveField(12)
  @JsonKey(name: 'params')
  String? get params;
  @override
  @JsonKey(ignore: true)
  _$$_UsersCopyWith<_$_Users> get copyWith =>
      throw _privateConstructorUsedError;
}

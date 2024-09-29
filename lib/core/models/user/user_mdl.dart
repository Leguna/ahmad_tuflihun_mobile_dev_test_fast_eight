import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_mdl.freezed.dart';
part 'user_mdl.g.dart';

@freezed
class UserMdl with _$UserMdl {
  const UserMdl._();

  const factory UserMdl({
    @Default('') String? id,
    @Default('') String? name,
    @Default('') String? email,
    @Default('') String? password,
    @Default('') String? phone,
    @Default('') String? address,
    @Default('') String? birthDate,
    @Default('') String? gender,
    @Default('') String? image,
    @Default('') String? role,
    @Default('') String? education,
    @Default('') String? maritalStatus,
  }) = _UserMdl;

  factory UserMdl.fromJson(Map<String, dynamic> json) =>
      _$UserMdlFromJson(json);

  factory UserMdl.fromJsonString(String json) =>
      _$UserMdlFromJson(jsonDecode(json));

  String toJsonString() => jsonEncode(toJson());
}

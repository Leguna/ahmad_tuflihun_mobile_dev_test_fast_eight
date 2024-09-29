import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'company_mdl.freezed.dart';
part 'company_mdl.g.dart';

@freezed
class CompanyMdl with _$CompanyMdl {
  const CompanyMdl._();

  const factory CompanyMdl({
    @Default('') String? name,
    @Default('') String? address,
    @Default('') String? jabatan,
    @Default('') String? lamaBekerja,
    @Default('') String? sumberGaji,
    @Default('') String? grossIncome,
    @Default('') String? bankName,
    @Default('') String? bankBranch,
    @Default('') String? bankAccount,
    @Default('') String? bankAccountName,
  }) = _CompanyMdl;

  factory CompanyMdl.fromJson(Map<String, dynamic> json) =>
      _$CompanyMdlFromJson(json);

  factory CompanyMdl.fromJsonString(String jsonString) =>
      CompanyMdl.fromJson(json.decode(jsonString));

  String toJsonString() => json.encode(toJson());
}

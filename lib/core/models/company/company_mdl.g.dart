// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_mdl.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CompanyMdlImpl _$$CompanyMdlImplFromJson(Map<String, dynamic> json) =>
    _$CompanyMdlImpl(
      name: json['name'] as String? ?? '',
      address: json['address'] as String? ?? '',
      jabatan: json['jabatan'] as String? ?? '',
      lamaBekerja: json['lamaBekerja'] as String? ?? '',
      sumberGaji: json['sumberGaji'] as String? ?? '',
      grossIncome: json['grossIncome'] as String? ?? '',
      bankName: json['bankName'] as String? ?? '',
      bankBranch: json['bankBranch'] as String? ?? '',
      bankAccount: json['bankAccount'] as String? ?? '',
      bankAccountName: json['bankAccountName'] as String? ?? '',
    );

Map<String, dynamic> _$$CompanyMdlImplToJson(_$CompanyMdlImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'address': instance.address,
      'jabatan': instance.jabatan,
      'lamaBekerja': instance.lamaBekerja,
      'sumberGaji': instance.sumberGaji,
      'grossIncome': instance.grossIncome,
      'bankName': instance.bankName,
      'bankBranch': instance.bankBranch,
      'bankAccount': instance.bankAccount,
      'bankAccountName': instance.bankAccountName,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_mdl.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddressMdlImpl _$$AddressMdlImplFromJson(Map<String, dynamic> json) =>
    _$AddressMdlImpl(
      ktp: json['ktp'] as String? ?? '',
      nik: json['nik'] as String? ?? '',
      address: json['address'] as String? ?? '',
      province: json['province'] as String? ?? '',
      kota: json['kota'] as String? ?? '',
      kecamatan: json['kecamatan'] as String? ?? '',
      kelurahan: json['kelurahan'] as String? ?? '',
      postalCode: json['postalCode'] as String? ?? '',
    );

Map<String, dynamic> _$$AddressMdlImplToJson(_$AddressMdlImpl instance) =>
    <String, dynamic>{
      'ktp': instance.ktp,
      'nik': instance.nik,
      'address': instance.address,
      'province': instance.province,
      'kota': instance.kota,
      'kecamatan': instance.kecamatan,
      'kelurahan': instance.kelurahan,
      'postalCode': instance.postalCode,
    };

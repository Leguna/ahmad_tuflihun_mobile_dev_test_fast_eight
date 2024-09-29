// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_mdl.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserMdlImpl _$$UserMdlImplFromJson(Map<String, dynamic> json) =>
    _$UserMdlImpl(
      id: json['id'] as String? ?? '',
      name: json['name'] as String? ?? '',
      email: json['email'] as String? ?? '',
      password: json['password'] as String? ?? '',
      phone: json['phone'] as String? ?? '',
      address: json['address'] as String? ?? '',
      birthDate: json['birthDate'] as String? ?? '',
      gender: json['gender'] as String? ?? '',
      image: json['image'] as String? ?? '',
      role: json['role'] as String? ?? '',
      education: json['education'] as String? ?? '',
      maritalStatus: json['maritalStatus'] as String? ?? '',
    );

Map<String, dynamic> _$$UserMdlImplToJson(_$UserMdlImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'password': instance.password,
      'phone': instance.phone,
      'address': instance.address,
      'birthDate': instance.birthDate,
      'gender': instance.gender,
      'image': instance.image,
      'role': instance.role,
      'education': instance.education,
      'maritalStatus': instance.maritalStatus,
    };

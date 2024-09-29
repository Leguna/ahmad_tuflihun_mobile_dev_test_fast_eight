import 'package:freezed_annotation/freezed_annotation.dart';

part 'address_mdl.freezed.dart';
part 'address_mdl.g.dart';

@freezed
class AddressMdl with _$AddressMdl {
  const factory AddressMdl({
    @Default('') String? ktp,
    @Default('') String? nik,
    @Default('') String? address,
    @Default('') String? province,
    @Default('') String? kota,
    @Default('') String? kecamatan,
    @Default('') String? kelurahan,
    @Default('') String? postalCode,
  }) = _AddressMdl;

  factory AddressMdl.fromJson(Map<String, dynamic> json) =>
      _$AddressMdlFromJson(json);
}

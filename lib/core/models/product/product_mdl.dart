import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_mdl.freezed.dart';
part 'product_mdl.g.dart';

@freezed
class ProductMdl with _$ProductMdl {
  const factory ProductMdl({
    @Default('') String? id,
    @Default('') String? name,
    @Default(0) int? price,
    @Default([]) List<String>? categories,
    @Default('') String? tag,
    @Default('') String? description,
    @Default('') String? image,
    @Default(0.0) double? discount,
  }) = _ProductMdl;

  factory ProductMdl.fromJson(Map<String, dynamic> json) => _$ProductMdlFromJson(json);
}

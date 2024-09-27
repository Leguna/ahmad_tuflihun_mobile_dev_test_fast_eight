import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_menu_mdl.freezed.dart';
part 'item_menu_mdl.g.dart';

@freezed
class ItemMenuMdl with _$ItemMenuMdl {
  const factory ItemMenuMdl({
    String? assetsName,
    String? name,
    String? tag,
  }) = _ItemMenuMdl;

  factory ItemMenuMdl.fromJson(Map<String, dynamic> json) => _$ItemMenuMdlFromJson(json);

  factory ItemMenuMdl.fromJsonString(String jsonString) => _$ItemMenuMdlFromJson(json.decode(jsonString));
}
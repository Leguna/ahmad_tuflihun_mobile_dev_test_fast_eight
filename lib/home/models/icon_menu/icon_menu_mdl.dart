import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'icon_menu_mdl.freezed.dart';
part 'icon_menu_mdl.g.dart';

@freezed
class IconMenuMdl with _$IconMenuMdl {
  const factory IconMenuMdl({
    String? id,
    String? title,
    String? icon,
    String? badge,
  }) = _IconMenuMdl;

  factory IconMenuMdl.fromJson(Map<String, dynamic> json) =>
      _$IconMenuMdlFromJson(json);

  factory IconMenuMdl.fromJsonString(String jsonString) =>
      _$IconMenuMdlFromJson(json.decode(jsonString));
}
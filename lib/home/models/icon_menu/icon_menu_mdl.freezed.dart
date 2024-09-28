// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'icon_menu_mdl.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

IconMenuMdl _$IconMenuMdlFromJson(Map<String, dynamic> json) {
  return _IconMenuMdl.fromJson(json);
}

/// @nodoc
mixin _$IconMenuMdl {
  String? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get icon => throw _privateConstructorUsedError;
  String? get badge => throw _privateConstructorUsedError;

  /// Serializes this IconMenuMdl to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of IconMenuMdl
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $IconMenuMdlCopyWith<IconMenuMdl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IconMenuMdlCopyWith<$Res> {
  factory $IconMenuMdlCopyWith(
          IconMenuMdl value, $Res Function(IconMenuMdl) then) =
      _$IconMenuMdlCopyWithImpl<$Res, IconMenuMdl>;
  @useResult
  $Res call({String? id, String? title, String? icon, String? badge});
}

/// @nodoc
class _$IconMenuMdlCopyWithImpl<$Res, $Val extends IconMenuMdl>
    implements $IconMenuMdlCopyWith<$Res> {
  _$IconMenuMdlCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of IconMenuMdl
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? icon = freezed,
    Object? badge = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      badge: freezed == badge
          ? _value.badge
          : badge // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IconMenuMdlImplCopyWith<$Res>
    implements $IconMenuMdlCopyWith<$Res> {
  factory _$$IconMenuMdlImplCopyWith(
          _$IconMenuMdlImpl value, $Res Function(_$IconMenuMdlImpl) then) =
      __$$IconMenuMdlImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? title, String? icon, String? badge});
}

/// @nodoc
class __$$IconMenuMdlImplCopyWithImpl<$Res>
    extends _$IconMenuMdlCopyWithImpl<$Res, _$IconMenuMdlImpl>
    implements _$$IconMenuMdlImplCopyWith<$Res> {
  __$$IconMenuMdlImplCopyWithImpl(
      _$IconMenuMdlImpl _value, $Res Function(_$IconMenuMdlImpl) _then)
      : super(_value, _then);

  /// Create a copy of IconMenuMdl
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? icon = freezed,
    Object? badge = freezed,
  }) {
    return _then(_$IconMenuMdlImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      badge: freezed == badge
          ? _value.badge
          : badge // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IconMenuMdlImpl implements _IconMenuMdl {
  const _$IconMenuMdlImpl({this.id, this.title, this.icon, this.badge});

  factory _$IconMenuMdlImpl.fromJson(Map<String, dynamic> json) =>
      _$$IconMenuMdlImplFromJson(json);

  @override
  final String? id;
  @override
  final String? title;
  @override
  final String? icon;
  @override
  final String? badge;

  @override
  String toString() {
    return 'IconMenuMdl(id: $id, title: $title, icon: $icon, badge: $badge)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IconMenuMdlImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.badge, badge) || other.badge == badge));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, icon, badge);

  /// Create a copy of IconMenuMdl
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IconMenuMdlImplCopyWith<_$IconMenuMdlImpl> get copyWith =>
      __$$IconMenuMdlImplCopyWithImpl<_$IconMenuMdlImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IconMenuMdlImplToJson(
      this,
    );
  }
}

abstract class _IconMenuMdl implements IconMenuMdl {
  const factory _IconMenuMdl(
      {final String? id,
      final String? title,
      final String? icon,
      final String? badge}) = _$IconMenuMdlImpl;

  factory _IconMenuMdl.fromJson(Map<String, dynamic> json) =
      _$IconMenuMdlImpl.fromJson;

  @override
  String? get id;
  @override
  String? get title;
  @override
  String? get icon;
  @override
  String? get badge;

  /// Create a copy of IconMenuMdl
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IconMenuMdlImplCopyWith<_$IconMenuMdlImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

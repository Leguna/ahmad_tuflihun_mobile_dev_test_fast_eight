// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'item_menu_mdl.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ItemMenuMdl _$ItemMenuMdlFromJson(Map<String, dynamic> json) {
  return _ItemMenuMdl.fromJson(json);
}

/// @nodoc
mixin _$ItemMenuMdl {
  String? get assetsName => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get tag => throw _privateConstructorUsedError;

  /// Serializes this ItemMenuMdl to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ItemMenuMdl
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ItemMenuMdlCopyWith<ItemMenuMdl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemMenuMdlCopyWith<$Res> {
  factory $ItemMenuMdlCopyWith(
          ItemMenuMdl value, $Res Function(ItemMenuMdl) then) =
      _$ItemMenuMdlCopyWithImpl<$Res, ItemMenuMdl>;
  @useResult
  $Res call({String? assetsName, String? name, String? tag});
}

/// @nodoc
class _$ItemMenuMdlCopyWithImpl<$Res, $Val extends ItemMenuMdl>
    implements $ItemMenuMdlCopyWith<$Res> {
  _$ItemMenuMdlCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ItemMenuMdl
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? assetsName = freezed,
    Object? name = freezed,
    Object? tag = freezed,
  }) {
    return _then(_value.copyWith(
      assetsName: freezed == assetsName
          ? _value.assetsName
          : assetsName // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      tag: freezed == tag
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ItemMenuMdlImplCopyWith<$Res>
    implements $ItemMenuMdlCopyWith<$Res> {
  factory _$$ItemMenuMdlImplCopyWith(
          _$ItemMenuMdlImpl value, $Res Function(_$ItemMenuMdlImpl) then) =
      __$$ItemMenuMdlImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? assetsName, String? name, String? tag});
}

/// @nodoc
class __$$ItemMenuMdlImplCopyWithImpl<$Res>
    extends _$ItemMenuMdlCopyWithImpl<$Res, _$ItemMenuMdlImpl>
    implements _$$ItemMenuMdlImplCopyWith<$Res> {
  __$$ItemMenuMdlImplCopyWithImpl(
      _$ItemMenuMdlImpl _value, $Res Function(_$ItemMenuMdlImpl) _then)
      : super(_value, _then);

  /// Create a copy of ItemMenuMdl
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? assetsName = freezed,
    Object? name = freezed,
    Object? tag = freezed,
  }) {
    return _then(_$ItemMenuMdlImpl(
      assetsName: freezed == assetsName
          ? _value.assetsName
          : assetsName // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      tag: freezed == tag
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ItemMenuMdlImpl implements _ItemMenuMdl {
  const _$ItemMenuMdlImpl({this.assetsName, this.name, this.tag});

  factory _$ItemMenuMdlImpl.fromJson(Map<String, dynamic> json) =>
      _$$ItemMenuMdlImplFromJson(json);

  @override
  final String? assetsName;
  @override
  final String? name;
  @override
  final String? tag;

  @override
  String toString() {
    return 'ItemMenuMdl(assetsName: $assetsName, name: $name, tag: $tag)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemMenuMdlImpl &&
            (identical(other.assetsName, assetsName) ||
                other.assetsName == assetsName) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.tag, tag) || other.tag == tag));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, assetsName, name, tag);

  /// Create a copy of ItemMenuMdl
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemMenuMdlImplCopyWith<_$ItemMenuMdlImpl> get copyWith =>
      __$$ItemMenuMdlImplCopyWithImpl<_$ItemMenuMdlImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ItemMenuMdlImplToJson(
      this,
    );
  }
}

abstract class _ItemMenuMdl implements ItemMenuMdl {
  const factory _ItemMenuMdl(
      {final String? assetsName,
      final String? name,
      final String? tag}) = _$ItemMenuMdlImpl;

  factory _ItemMenuMdl.fromJson(Map<String, dynamic> json) =
      _$ItemMenuMdlImpl.fromJson;

  @override
  String? get assetsName;
  @override
  String? get name;
  @override
  String? get tag;

  /// Create a copy of ItemMenuMdl
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ItemMenuMdlImplCopyWith<_$ItemMenuMdlImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

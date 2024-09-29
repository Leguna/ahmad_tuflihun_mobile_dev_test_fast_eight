// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_mdl.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductMdl _$ProductMdlFromJson(Map<String, dynamic> json) {
  return _ProductMdl.fromJson(json);
}

/// @nodoc
mixin _$ProductMdl {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int? get price => throw _privateConstructorUsedError;
  List<String>? get categories => throw _privateConstructorUsedError;
  String? get tag => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  double? get discount => throw _privateConstructorUsedError;

  /// Serializes this ProductMdl to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductMdl
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductMdlCopyWith<ProductMdl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductMdlCopyWith<$Res> {
  factory $ProductMdlCopyWith(
          ProductMdl value, $Res Function(ProductMdl) then) =
      _$ProductMdlCopyWithImpl<$Res, ProductMdl>;
  @useResult
  $Res call(
      {String? id,
      String? name,
      int? price,
      List<String>? categories,
      String? tag,
      String? description,
      String? image,
      double? discount});
}

/// @nodoc
class _$ProductMdlCopyWithImpl<$Res, $Val extends ProductMdl>
    implements $ProductMdlCopyWith<$Res> {
  _$ProductMdlCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductMdl
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? price = freezed,
    Object? categories = freezed,
    Object? tag = freezed,
    Object? description = freezed,
    Object? image = freezed,
    Object? discount = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      categories: freezed == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      tag: freezed == tag
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductMdlImplCopyWith<$Res>
    implements $ProductMdlCopyWith<$Res> {
  factory _$$ProductMdlImplCopyWith(
          _$ProductMdlImpl value, $Res Function(_$ProductMdlImpl) then) =
      __$$ProductMdlImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? name,
      int? price,
      List<String>? categories,
      String? tag,
      String? description,
      String? image,
      double? discount});
}

/// @nodoc
class __$$ProductMdlImplCopyWithImpl<$Res>
    extends _$ProductMdlCopyWithImpl<$Res, _$ProductMdlImpl>
    implements _$$ProductMdlImplCopyWith<$Res> {
  __$$ProductMdlImplCopyWithImpl(
      _$ProductMdlImpl _value, $Res Function(_$ProductMdlImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductMdl
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? price = freezed,
    Object? categories = freezed,
    Object? tag = freezed,
    Object? description = freezed,
    Object? image = freezed,
    Object? discount = freezed,
  }) {
    return _then(_$ProductMdlImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      categories: freezed == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      tag: freezed == tag
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductMdlImpl implements _ProductMdl {
  const _$ProductMdlImpl(
      {this.id = '',
      this.name = '',
      this.price = 0,
      final List<String>? categories = const [],
      this.tag = '',
      this.description = '',
      this.image = '',
      this.discount = 0.0})
      : _categories = categories;

  factory _$ProductMdlImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductMdlImplFromJson(json);

  @override
  @JsonKey()
  final String? id;
  @override
  @JsonKey()
  final String? name;
  @override
  @JsonKey()
  final int? price;
  final List<String>? _categories;
  @override
  @JsonKey()
  List<String>? get categories {
    final value = _categories;
    if (value == null) return null;
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final String? tag;
  @override
  @JsonKey()
  final String? description;
  @override
  @JsonKey()
  final String? image;
  @override
  @JsonKey()
  final double? discount;

  @override
  String toString() {
    return 'ProductMdl(id: $id, name: $name, price: $price, categories: $categories, tag: $tag, description: $description, image: $image, discount: $discount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductMdlImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            (identical(other.tag, tag) || other.tag == tag) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.discount, discount) ||
                other.discount == discount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      price,
      const DeepCollectionEquality().hash(_categories),
      tag,
      description,
      image,
      discount);

  /// Create a copy of ProductMdl
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductMdlImplCopyWith<_$ProductMdlImpl> get copyWith =>
      __$$ProductMdlImplCopyWithImpl<_$ProductMdlImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductMdlImplToJson(
      this,
    );
  }
}

abstract class _ProductMdl implements ProductMdl {
  const factory _ProductMdl(
      {final String? id,
      final String? name,
      final int? price,
      final List<String>? categories,
      final String? tag,
      final String? description,
      final String? image,
      final double? discount}) = _$ProductMdlImpl;

  factory _ProductMdl.fromJson(Map<String, dynamic> json) =
      _$ProductMdlImpl.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  int? get price;
  @override
  List<String>? get categories;
  @override
  String? get tag;
  @override
  String? get description;
  @override
  String? get image;
  @override
  double? get discount;

  /// Create a copy of ProductMdl
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductMdlImplCopyWith<_$ProductMdlImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

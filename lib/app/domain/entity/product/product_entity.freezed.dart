// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductEntity _$ProductEntityFromJson(Map<String, dynamic> json) {
  return _ProductEntity.fromJson(json);
}

/// @nodoc
mixin _$ProductEntity {
  String get id => throw _privateConstructorUsedError;
  set id(String value) => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  set name(String value) => throw _privateConstructorUsedError;
  String get shortDesc => throw _privateConstructorUsedError;
  set shortDesc(String value) => throw _privateConstructorUsedError;
  String get urlPhoto => throw _privateConstructorUsedError;
  set urlPhoto(String value) => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  set price(int value) => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;
  set rating(double value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductEntityCopyWith<ProductEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductEntityCopyWith<$Res> {
  factory $ProductEntityCopyWith(
          ProductEntity value, $Res Function(ProductEntity) then) =
      _$ProductEntityCopyWithImpl<$Res, ProductEntity>;
  @useResult
  $Res call(
      {String id,
      String name,
      String shortDesc,
      String urlPhoto,
      int price,
      double rating});
}

/// @nodoc
class _$ProductEntityCopyWithImpl<$Res, $Val extends ProductEntity>
    implements $ProductEntityCopyWith<$Res> {
  _$ProductEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? shortDesc = null,
    Object? urlPhoto = null,
    Object? price = null,
    Object? rating = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      shortDesc: null == shortDesc
          ? _value.shortDesc
          : shortDesc // ignore: cast_nullable_to_non_nullable
              as String,
      urlPhoto: null == urlPhoto
          ? _value.urlPhoto
          : urlPhoto // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProductEntityCopyWith<$Res>
    implements $ProductEntityCopyWith<$Res> {
  factory _$$_ProductEntityCopyWith(
          _$_ProductEntity value, $Res Function(_$_ProductEntity) then) =
      __$$_ProductEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String shortDesc,
      String urlPhoto,
      int price,
      double rating});
}

/// @nodoc
class __$$_ProductEntityCopyWithImpl<$Res>
    extends _$ProductEntityCopyWithImpl<$Res, _$_ProductEntity>
    implements _$$_ProductEntityCopyWith<$Res> {
  __$$_ProductEntityCopyWithImpl(
      _$_ProductEntity _value, $Res Function(_$_ProductEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? shortDesc = null,
    Object? urlPhoto = null,
    Object? price = null,
    Object? rating = null,
  }) {
    return _then(_$_ProductEntity(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      shortDesc: null == shortDesc
          ? _value.shortDesc
          : shortDesc // ignore: cast_nullable_to_non_nullable
              as String,
      urlPhoto: null == urlPhoto
          ? _value.urlPhoto
          : urlPhoto // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductEntity implements _ProductEntity {
  _$_ProductEntity(
      {this.id = '',
      this.name = '',
      this.shortDesc = '',
      this.urlPhoto = '',
      this.price = 0,
      this.rating = 0.0});

  factory _$_ProductEntity.fromJson(Map<String, dynamic> json) =>
      _$$_ProductEntityFromJson(json);

  @override
  @JsonKey()
  String id;
  @override
  @JsonKey()
  String name;
  @override
  @JsonKey()
  String shortDesc;
  @override
  @JsonKey()
  String urlPhoto;
  @override
  @JsonKey()
  int price;
  @override
  @JsonKey()
  double rating;

  @override
  String toString() {
    return 'ProductEntity(id: $id, name: $name, shortDesc: $shortDesc, urlPhoto: $urlPhoto, price: $price, rating: $rating)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductEntityCopyWith<_$_ProductEntity> get copyWith =>
      __$$_ProductEntityCopyWithImpl<_$_ProductEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductEntityToJson(
      this,
    );
  }
}

abstract class _ProductEntity implements ProductEntity {
  factory _ProductEntity(
      {String id,
      String name,
      String shortDesc,
      String urlPhoto,
      int price,
      double rating}) = _$_ProductEntity;

  factory _ProductEntity.fromJson(Map<String, dynamic> json) =
      _$_ProductEntity.fromJson;

  @override
  String get id;
  set id(String value);
  @override
  String get name;
  set name(String value);
  @override
  String get shortDesc;
  set shortDesc(String value);
  @override
  String get urlPhoto;
  set urlPhoto(String value);
  @override
  int get price;
  set price(int value);
  @override
  double get rating;
  set rating(double value);
  @override
  @JsonKey(ignore: true)
  _$$_ProductEntityCopyWith<_$_ProductEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

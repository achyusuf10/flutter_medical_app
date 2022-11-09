// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cart_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CartEntity _$CartEntityFromJson(Map<String, dynamic> json) {
  return _CartEntity.fromJson(json);
}

/// @nodoc
mixin _$CartEntity {
  String get id => throw _privateConstructorUsedError;
  set id(String value) => throw _privateConstructorUsedError;
  String get emailUser => throw _privateConstructorUsedError;
  set emailUser(String value) => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  set quantity(int value) => throw _privateConstructorUsedError;
  String get time => throw _privateConstructorUsedError;
  set time(String value) => throw _privateConstructorUsedError;
  ProductEntity? get productEntity => throw _privateConstructorUsedError;
  set productEntity(ProductEntity? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CartEntityCopyWith<CartEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartEntityCopyWith<$Res> {
  factory $CartEntityCopyWith(
          CartEntity value, $Res Function(CartEntity) then) =
      _$CartEntityCopyWithImpl<$Res, CartEntity>;
  @useResult
  $Res call(
      {String id,
      String emailUser,
      int quantity,
      String time,
      ProductEntity? productEntity});

  $ProductEntityCopyWith<$Res>? get productEntity;
}

/// @nodoc
class _$CartEntityCopyWithImpl<$Res, $Val extends CartEntity>
    implements $CartEntityCopyWith<$Res> {
  _$CartEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? emailUser = null,
    Object? quantity = null,
    Object? time = null,
    Object? productEntity = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      emailUser: null == emailUser
          ? _value.emailUser
          : emailUser // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      productEntity: freezed == productEntity
          ? _value.productEntity
          : productEntity // ignore: cast_nullable_to_non_nullable
              as ProductEntity?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductEntityCopyWith<$Res>? get productEntity {
    if (_value.productEntity == null) {
      return null;
    }

    return $ProductEntityCopyWith<$Res>(_value.productEntity!, (value) {
      return _then(_value.copyWith(productEntity: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CartEntityCopyWith<$Res>
    implements $CartEntityCopyWith<$Res> {
  factory _$$_CartEntityCopyWith(
          _$_CartEntity value, $Res Function(_$_CartEntity) then) =
      __$$_CartEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String emailUser,
      int quantity,
      String time,
      ProductEntity? productEntity});

  @override
  $ProductEntityCopyWith<$Res>? get productEntity;
}

/// @nodoc
class __$$_CartEntityCopyWithImpl<$Res>
    extends _$CartEntityCopyWithImpl<$Res, _$_CartEntity>
    implements _$$_CartEntityCopyWith<$Res> {
  __$$_CartEntityCopyWithImpl(
      _$_CartEntity _value, $Res Function(_$_CartEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? emailUser = null,
    Object? quantity = null,
    Object? time = null,
    Object? productEntity = freezed,
  }) {
    return _then(_$_CartEntity(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      emailUser: null == emailUser
          ? _value.emailUser
          : emailUser // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      productEntity: freezed == productEntity
          ? _value.productEntity
          : productEntity // ignore: cast_nullable_to_non_nullable
              as ProductEntity?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_CartEntity implements _CartEntity {
  _$_CartEntity(
      {this.id = '',
      this.emailUser = '',
      this.quantity = 0,
      this.time = '',
      this.productEntity});

  factory _$_CartEntity.fromJson(Map<String, dynamic> json) =>
      _$$_CartEntityFromJson(json);

  @override
  @JsonKey()
  String id;
  @override
  @JsonKey()
  String emailUser;
  @override
  @JsonKey()
  int quantity;
  @override
  @JsonKey()
  String time;
  @override
  ProductEntity? productEntity;

  @override
  String toString() {
    return 'CartEntity(id: $id, emailUser: $emailUser, quantity: $quantity, time: $time, productEntity: $productEntity)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CartEntityCopyWith<_$_CartEntity> get copyWith =>
      __$$_CartEntityCopyWithImpl<_$_CartEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CartEntityToJson(
      this,
    );
  }
}

abstract class _CartEntity implements CartEntity {
  factory _CartEntity(
      {String id,
      String emailUser,
      int quantity,
      String time,
      ProductEntity? productEntity}) = _$_CartEntity;

  factory _CartEntity.fromJson(Map<String, dynamic> json) =
      _$_CartEntity.fromJson;

  @override
  String get id;
  set id(String value);
  @override
  String get emailUser;
  set emailUser(String value);
  @override
  int get quantity;
  set quantity(int value);
  @override
  String get time;
  set time(String value);
  @override
  ProductEntity? get productEntity;
  set productEntity(ProductEntity? value);
  @override
  @JsonKey(ignore: true)
  _$$_CartEntityCopyWith<_$_CartEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

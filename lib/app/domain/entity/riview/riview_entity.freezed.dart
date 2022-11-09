// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'riview_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RiviewEntity _$RiviewEntityFromJson(Map<String, dynamic> json) {
  return _RiviewEntity.fromJson(json);
}

/// @nodoc
mixin _$RiviewEntity {
  String get email => throw _privateConstructorUsedError;
  set email(String value) => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  set id(String value) => throw _privateConstructorUsedError;
  String get idProduct => throw _privateConstructorUsedError;
  set idProduct(String value) => throw _privateConstructorUsedError;
  String get riview => throw _privateConstructorUsedError;
  set riview(String value) => throw _privateConstructorUsedError;
  String get time => throw _privateConstructorUsedError;
  set time(String value) => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;
  set rating(double value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RiviewEntityCopyWith<RiviewEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RiviewEntityCopyWith<$Res> {
  factory $RiviewEntityCopyWith(
          RiviewEntity value, $Res Function(RiviewEntity) then) =
      _$RiviewEntityCopyWithImpl<$Res, RiviewEntity>;
  @useResult
  $Res call(
      {String email,
      String id,
      String idProduct,
      String riview,
      String time,
      double rating});
}

/// @nodoc
class _$RiviewEntityCopyWithImpl<$Res, $Val extends RiviewEntity>
    implements $RiviewEntityCopyWith<$Res> {
  _$RiviewEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? id = null,
    Object? idProduct = null,
    Object? riview = null,
    Object? time = null,
    Object? rating = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      idProduct: null == idProduct
          ? _value.idProduct
          : idProduct // ignore: cast_nullable_to_non_nullable
              as String,
      riview: null == riview
          ? _value.riview
          : riview // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RiviewEntityCopyWith<$Res>
    implements $RiviewEntityCopyWith<$Res> {
  factory _$$_RiviewEntityCopyWith(
          _$_RiviewEntity value, $Res Function(_$_RiviewEntity) then) =
      __$$_RiviewEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String email,
      String id,
      String idProduct,
      String riview,
      String time,
      double rating});
}

/// @nodoc
class __$$_RiviewEntityCopyWithImpl<$Res>
    extends _$RiviewEntityCopyWithImpl<$Res, _$_RiviewEntity>
    implements _$$_RiviewEntityCopyWith<$Res> {
  __$$_RiviewEntityCopyWithImpl(
      _$_RiviewEntity _value, $Res Function(_$_RiviewEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? id = null,
    Object? idProduct = null,
    Object? riview = null,
    Object? time = null,
    Object? rating = null,
  }) {
    return _then(_$_RiviewEntity(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      idProduct: null == idProduct
          ? _value.idProduct
          : idProduct // ignore: cast_nullable_to_non_nullable
              as String,
      riview: null == riview
          ? _value.riview
          : riview // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RiviewEntity implements _RiviewEntity {
  _$_RiviewEntity(
      {this.email = '',
      this.id = '',
      this.idProduct = '',
      this.riview = '',
      this.time = '',
      this.rating = 0.0});

  factory _$_RiviewEntity.fromJson(Map<String, dynamic> json) =>
      _$$_RiviewEntityFromJson(json);

  @override
  @JsonKey()
  String email;
  @override
  @JsonKey()
  String id;
  @override
  @JsonKey()
  String idProduct;
  @override
  @JsonKey()
  String riview;
  @override
  @JsonKey()
  String time;
  @override
  @JsonKey()
  double rating;

  @override
  String toString() {
    return 'RiviewEntity(email: $email, id: $id, idProduct: $idProduct, riview: $riview, time: $time, rating: $rating)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RiviewEntityCopyWith<_$_RiviewEntity> get copyWith =>
      __$$_RiviewEntityCopyWithImpl<_$_RiviewEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RiviewEntityToJson(
      this,
    );
  }
}

abstract class _RiviewEntity implements RiviewEntity {
  factory _RiviewEntity(
      {String email,
      String id,
      String idProduct,
      String riview,
      String time,
      double rating}) = _$_RiviewEntity;

  factory _RiviewEntity.fromJson(Map<String, dynamic> json) =
      _$_RiviewEntity.fromJson;

  @override
  String get email;
  set email(String value);
  @override
  String get id;
  set id(String value);
  @override
  String get idProduct;
  set idProduct(String value);
  @override
  String get riview;
  set riview(String value);
  @override
  String get time;
  set time(String value);
  @override
  double get rating;
  set rating(double value);
  @override
  @JsonKey(ignore: true)
  _$$_RiviewEntityCopyWith<_$_RiviewEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

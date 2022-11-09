// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'transaction_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TransactionEntity _$TransactionEntityFromJson(Map<String, dynamic> json) {
  return _TransactionEntity.fromJson(json);
}

/// @nodoc
mixin _$TransactionEntity {
  String get id => throw _privateConstructorUsedError;
  List<CartEntity> get listCartEntity => throw _privateConstructorUsedError;
  String get paymentMethod => throw _privateConstructorUsedError;
  String get totalPrice => throw _privateConstructorUsedError;
  String get time => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionEntityCopyWith<TransactionEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionEntityCopyWith<$Res> {
  factory $TransactionEntityCopyWith(
          TransactionEntity value, $Res Function(TransactionEntity) then) =
      _$TransactionEntityCopyWithImpl<$Res, TransactionEntity>;
  @useResult
  $Res call(
      {String id,
      List<CartEntity> listCartEntity,
      String paymentMethod,
      String totalPrice,
      String time,
      String email});
}

/// @nodoc
class _$TransactionEntityCopyWithImpl<$Res, $Val extends TransactionEntity>
    implements $TransactionEntityCopyWith<$Res> {
  _$TransactionEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? listCartEntity = null,
    Object? paymentMethod = null,
    Object? totalPrice = null,
    Object? time = null,
    Object? email = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      listCartEntity: null == listCartEntity
          ? _value.listCartEntity
          : listCartEntity // ignore: cast_nullable_to_non_nullable
              as List<CartEntity>,
      paymentMethod: null == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TransactionEntityCopyWith<$Res>
    implements $TransactionEntityCopyWith<$Res> {
  factory _$$_TransactionEntityCopyWith(_$_TransactionEntity value,
          $Res Function(_$_TransactionEntity) then) =
      __$$_TransactionEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      List<CartEntity> listCartEntity,
      String paymentMethod,
      String totalPrice,
      String time,
      String email});
}

/// @nodoc
class __$$_TransactionEntityCopyWithImpl<$Res>
    extends _$TransactionEntityCopyWithImpl<$Res, _$_TransactionEntity>
    implements _$$_TransactionEntityCopyWith<$Res> {
  __$$_TransactionEntityCopyWithImpl(
      _$_TransactionEntity _value, $Res Function(_$_TransactionEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? listCartEntity = null,
    Object? paymentMethod = null,
    Object? totalPrice = null,
    Object? time = null,
    Object? email = null,
  }) {
    return _then(_$_TransactionEntity(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      listCartEntity: null == listCartEntity
          ? _value._listCartEntity
          : listCartEntity // ignore: cast_nullable_to_non_nullable
              as List<CartEntity>,
      paymentMethod: null == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_TransactionEntity implements _TransactionEntity {
  _$_TransactionEntity(
      {this.id = '',
      final List<CartEntity> listCartEntity = const [],
      this.paymentMethod = '',
      this.totalPrice = '',
      this.time = '',
      this.email = ''})
      : _listCartEntity = listCartEntity;

  factory _$_TransactionEntity.fromJson(Map<String, dynamic> json) =>
      _$$_TransactionEntityFromJson(json);

  @override
  @JsonKey()
  final String id;
  final List<CartEntity> _listCartEntity;
  @override
  @JsonKey()
  List<CartEntity> get listCartEntity {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listCartEntity);
  }

  @override
  @JsonKey()
  final String paymentMethod;
  @override
  @JsonKey()
  final String totalPrice;
  @override
  @JsonKey()
  final String time;
  @override
  @JsonKey()
  final String email;

  @override
  String toString() {
    return 'TransactionEntity(id: $id, listCartEntity: $listCartEntity, paymentMethod: $paymentMethod, totalPrice: $totalPrice, time: $time, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TransactionEntity &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._listCartEntity, _listCartEntity) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_listCartEntity),
      paymentMethod,
      totalPrice,
      time,
      email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TransactionEntityCopyWith<_$_TransactionEntity> get copyWith =>
      __$$_TransactionEntityCopyWithImpl<_$_TransactionEntity>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TransactionEntityToJson(
      this,
    );
  }
}

abstract class _TransactionEntity implements TransactionEntity {
  factory _TransactionEntity(
      {final String id,
      final List<CartEntity> listCartEntity,
      final String paymentMethod,
      final String totalPrice,
      final String time,
      final String email}) = _$_TransactionEntity;

  factory _TransactionEntity.fromJson(Map<String, dynamic> json) =
      _$_TransactionEntity.fromJson;

  @override
  String get id;
  @override
  List<CartEntity> get listCartEntity;
  @override
  String get paymentMethod;
  @override
  String get totalPrice;
  @override
  String get time;
  @override
  String get email;
  @override
  @JsonKey(ignore: true)
  _$$_TransactionEntityCopyWith<_$_TransactionEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

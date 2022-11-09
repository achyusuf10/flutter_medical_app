// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CartEntity _$$_CartEntityFromJson(Map<String, dynamic> json) =>
    _$_CartEntity(
      id: json['id'] as String? ?? '',
      emailUser: json['emailUser'] as String? ?? '',
      quantity: json['quantity'] as int? ?? 0,
      time: json['time'] as String? ?? '',
      productEntity: json['productEntity'] == null
          ? null
          : ProductEntity.fromJson(
              json['productEntity'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CartEntityToJson(_$_CartEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'emailUser': instance.emailUser,
      'quantity': instance.quantity,
      'time': instance.time,
      'productEntity': instance.productEntity?.toJson(),
    };

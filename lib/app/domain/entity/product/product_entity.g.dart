// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductEntity _$$_ProductEntityFromJson(Map<String, dynamic> json) =>
    _$_ProductEntity(
      id: json['id'] as String? ?? '',
      name: json['name'] as String? ?? '',
      shortDesc: json['shortDesc'] as String? ?? '',
      urlPhoto: json['urlPhoto'] as String? ?? '',
      price: json['price'] as int? ?? 0,
      rating: (json['rating'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$$_ProductEntityToJson(_$_ProductEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'shortDesc': instance.shortDesc,
      'urlPhoto': instance.urlPhoto,
      'price': instance.price,
      'rating': instance.rating,
    };

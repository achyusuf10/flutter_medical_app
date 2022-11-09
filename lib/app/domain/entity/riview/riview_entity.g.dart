// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'riview_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RiviewEntity _$$_RiviewEntityFromJson(Map<String, dynamic> json) =>
    _$_RiviewEntity(
      email: json['email'] as String? ?? '',
      id: json['id'] as String? ?? '',
      idProduct: json['idProduct'] as String? ?? '',
      riview: json['riview'] as String? ?? '',
      time: json['time'] as String? ?? '',
      rating: (json['rating'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$$_RiviewEntityToJson(_$_RiviewEntity instance) =>
    <String, dynamic>{
      'email': instance.email,
      'id': instance.id,
      'idProduct': instance.idProduct,
      'riview': instance.riview,
      'time': instance.time,
      'rating': instance.rating,
    };

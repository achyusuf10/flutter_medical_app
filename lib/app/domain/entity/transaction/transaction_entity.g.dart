// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TransactionEntity _$$_TransactionEntityFromJson(Map<String, dynamic> json) =>
    _$_TransactionEntity(
      id: json['id'] as String? ?? '',
      listCartEntity: (json['listCartEntity'] as List<dynamic>?)
              ?.map((e) => CartEntity.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      paymentMethod: json['paymentMethod'] as String? ?? '',
      totalPrice: json['totalPrice'] as String? ?? '',
      time: json['time'] as String? ?? '',
      email: json['email'] as String? ?? '',
    );

Map<String, dynamic> _$$_TransactionEntityToJson(
        _$_TransactionEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'listCartEntity': instance.listCartEntity.map((e) => e.toJson()).toList(),
      'paymentMethod': instance.paymentMethod,
      'totalPrice': instance.totalPrice,
      'time': instance.time,
      'email': instance.email,
    };

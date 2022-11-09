import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_entity.freezed.dart';
part 'product_entity.g.dart';

@unfreezed
class ProductEntity with _$ProductEntity {
  factory ProductEntity({
    @Default('') String id,
    @Default('') String name,
    @Default('') String shortDesc,
    @Default('') String urlPhoto,
    @Default(0) int price,
    @Default(0.0) double rating,
  }) = _ProductEntity;

  factory ProductEntity.fromDocSnapshot(DocumentSnapshot doc) {
    final data = doc.data()! as Map<String, dynamic>;
    return ProductEntity.fromJson(data);
  }

  factory ProductEntity.fromJson(Map<String, dynamic> json) =>
      _$ProductEntityFromJson(json);
}

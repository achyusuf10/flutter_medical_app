import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:medical_app/app/domain/entity/product/product_entity.dart';

part 'cart_entity.freezed.dart';
part 'cart_entity.g.dart';

@unfreezed
class CartEntity with _$CartEntity {
  @JsonSerializable(explicitToJson: true)
  factory CartEntity({
    @Default('') String id,
    @Default('') String emailUser,
    @Default(0) int quantity,
    @Default('') String time,
    ProductEntity? productEntity,
  }) = _CartEntity;

  factory CartEntity.fromDocSnapshot(DocumentSnapshot doc) {
    final data = doc.data()! as Map<String, dynamic>;
    return CartEntity.fromJson(data);
  }

  factory CartEntity.fromJson(Map<String, dynamic> json) =>
      _$CartEntityFromJson(json);
}

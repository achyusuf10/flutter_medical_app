import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../cart/cart_entity.dart';

part 'transaction_entity.freezed.dart';
part 'transaction_entity.g.dart';

@freezed
class TransactionEntity with _$TransactionEntity {
  @JsonSerializable(explicitToJson: true)
  factory TransactionEntity({
    @Default('') String id,
    @Default([]) List<CartEntity> listCartEntity,
    @Default('') String paymentMethod,
    @Default('') String totalPrice,
    @Default('') String time,
    @Default('') String email,
  }) = _TransactionEntity;

  factory TransactionEntity.fromDocSnapshot(DocumentSnapshot doc) {
    final data = doc.data()! as Map<String, dynamic>;
    return TransactionEntity.fromJson(data);
  }

  factory TransactionEntity.fromJson(Map<String, dynamic> json) =>
      _$TransactionEntityFromJson(json);
}

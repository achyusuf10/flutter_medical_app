import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'riview_entity.freezed.dart';
part 'riview_entity.g.dart';

@unfreezed
class RiviewEntity with _$RiviewEntity {
  factory RiviewEntity({
    @Default('') String email,
    @Default('') String id,
    @Default('') String idProduct,
    @Default('') String riview,
    @Default('') String time,
    @Default(0.0) double rating,
  }) = _RiviewEntity;

  factory RiviewEntity.fromDocSnapshot(DocumentSnapshot doc) {
    final data = doc.data()! as Map<String, dynamic>;
    return RiviewEntity.fromJson(data);
  }

  factory RiviewEntity.fromJson(Map<String, dynamic> json) =>
      _$RiviewEntityFromJson(json);
}

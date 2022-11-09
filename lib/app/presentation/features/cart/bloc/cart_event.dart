part of 'cart_bloc.dart';

@freezed
class CartEvent with _$CartEvent {
  const factory CartEvent.started() = _Started;
  const factory CartEvent.addQuantity({
    required CartEntity cartEntity,
  }) = _AddQuantity;
  const factory CartEvent.subtractQuantity({
    required CartEntity cartEntity,
  }) = _SubtractQuantity;

  const factory CartEvent.deleteCart({
    required CartEntity cartEntity,
  }) = _DeleteCart;
}

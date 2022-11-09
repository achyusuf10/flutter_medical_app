part of 'payment_bloc.dart';

@freezed
class PaymentEvent with _$PaymentEvent {
  const factory PaymentEvent.started() = _Started;
  const factory PaymentEvent.addTransaction({
    required String paymentMethod,
    required List<CartEntity> listCartEntity,
  }) = _AddTransaction;
}

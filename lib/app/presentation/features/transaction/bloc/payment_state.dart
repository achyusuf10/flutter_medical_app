part of 'payment_bloc.dart';

@freezed
class PaymentState with _$PaymentState {
  const factory PaymentState.initial() = _Initial;
  const factory PaymentState.loading() = _Loading;
  const factory PaymentState.success({
    required Success success,
  }) = _Success;
  const factory PaymentState.failed({required Failure failure}) = _Failed;
}

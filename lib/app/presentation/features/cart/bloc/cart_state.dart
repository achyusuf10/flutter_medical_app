part of 'cart_bloc.dart';

@freezed
class CartState with _$CartState {
  const factory CartState.initial() = _Initial;
  const factory CartState.loaded({
    required List<CartEntity> listCart,
  }) = _Loaded;
  const factory CartState.loading() = _Loading;
  const factory CartState.failed({
    required Failure failure,
  }) = _Failed;
}

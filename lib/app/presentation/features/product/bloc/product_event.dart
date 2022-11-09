part of 'product_bloc.dart';

@freezed
class ProductEvent with _$ProductEvent {
  const factory ProductEvent.started() = _Started;
  const factory ProductEvent.getListProduct() = _GetListProduct;
  const factory ProductEvent.addProductToCart({
    required ProductEntity productEntity,
  }) = _AddProductToCart;
}

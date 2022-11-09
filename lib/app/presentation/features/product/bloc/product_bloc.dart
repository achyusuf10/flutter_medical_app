import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:medical_app/app/domain/entity/product/product_entity.dart';
import 'package:medical_app/app/domain/usecase/cart/add_to_cart_usecase.dart';
import 'package:medical_app/app/domain/usecase/product/get_all_product_usecase.dart';
import 'package:medical_app/core/models/no_params/no_params.dart';

part 'product_event.dart';
part 'product_state.dart';
part 'product_bloc.freezed.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final GetAllProductUseCase _getAllProductUseCase;
  final AddToCartUseCase _addToCartUseCase;
  ProductBloc(this._getAllProductUseCase, this._addToCartUseCase)
      : super(const _Initial()) {
    on<_GetListProduct>(_onGetListProduct);
    on<_AddProductToCart>(_onAddToCart);
  }

  FutureOr<void> _onGetListProduct(event, emit) async {
    emit(const _Loading());
    final result = await _getAllProductUseCase.call(NoParams());
    final listProduct = result.fold((l) => <ProductEntity>[], (r) => r);
    emit(_Loaded(listProduct: listProduct));
  }

  FutureOr<void> _onAddToCart(event, emit) async {
    event as _AddProductToCart;
    await _addToCartUseCase
        .call(AddToCartParams(productEntity: event.productEntity));
  }
}

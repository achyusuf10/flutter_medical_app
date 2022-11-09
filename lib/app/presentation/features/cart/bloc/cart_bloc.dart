import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:medical_app/app/domain/entity/cart/cart_entity.dart';
import 'package:medical_app/app/domain/usecase/cart/add_quantity_to_cart_usecase.dart';
import 'package:medical_app/app/domain/usecase/cart/delete_cart_usecase.dart';
import 'package:medical_app/app/domain/usecase/cart/get_all_cart_usecase.dart';
import 'package:medical_app/app/domain/usecase/cart/subtract_quantity_from_cart_usecase.dart';
import 'package:medical_app/core/models/failure/failure.dart';
import 'package:medical_app/core/models/no_params/no_params.dart';

part 'cart_event.dart';
part 'cart_state.dart';
part 'cart_bloc.freezed.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  final GetAllCartUseCase _getAllCartUseCase;
  final AddQuantityToCartUseCase _addQuantityToCartUseCase;
  final SubtractQuantityFromCartUseCase _subtractQuantityFromCartUseCase;
  final DeleteCartUseCase _deleteCartUseCase;

  CartBloc(this._getAllCartUseCase, this._addQuantityToCartUseCase,
      this._subtractQuantityFromCartUseCase, this._deleteCartUseCase)
      : super(const _Initial()) {
    on<_Started>(_onStarted);
    on<_AddQuantity>(_onAddQuantity);
    on<_SubtractQuantity>(_onSubtractQuantity);
    on<_DeleteCart>(_onDeleteCart);
  }

  FutureOr<void> _onStarted(event, emit) async {
    emit(const _Loading());
    final result = await _getAllCartUseCase.call(NoParams());
    result.fold(
      (l) => emit(const _Loaded(listCart: [])),
      (r) => emit(_Loaded(listCart: r)),
    );
  }

  FutureOr<void> _onAddQuantity(event, emit) async {
    event as _AddQuantity;
    await _addQuantityToCartUseCase
        .call(AddQuantityToCartParams(cartEntity: event.cartEntity));
    await _onStarted(event, emit);
  }

  FutureOr<void> _onSubtractQuantity(event, emit) async {
    event as _SubtractQuantity;
    if (event.cartEntity.quantity == 1) return;
    await _subtractQuantityFromCartUseCase
        .call(SubtractQuantityFromCartParams(cartEntity: event.cartEntity));
    await _onStarted(event, emit);
  }

  FutureOr<void> _onDeleteCart(event, emit) async {
    event as _DeleteCart;
    await _deleteCartUseCase.call(DeleteCartParams(id: event.cartEntity.id));
    await _onStarted(event, emit);
  }
}

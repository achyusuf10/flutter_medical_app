import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:medical_app/app/domain/usecase/cart/delete_cart_usecase.dart';
import 'package:medical_app/app/domain/usecase/transaction/add_transaction_usecase.dart';
import 'package:medical_app/core/models/failure/failure.dart';
import 'package:medical_app/core/models/success/success.dart';

import '../../../../domain/entity/cart/cart_entity.dart';

part 'payment_event.dart';
part 'payment_state.dart';
part 'payment_bloc.freezed.dart';

class PaymentBloc extends Bloc<PaymentEvent, PaymentState> {
  final DeleteCartUseCase _deleteCartUseCase;
  final AddTransactionUseCase _addTransactionUseCase;
  PaymentBloc(this._deleteCartUseCase, this._addTransactionUseCase)
      : super(const _Initial()) {
    on<_AddTransaction>(_onAddTransaction);
  }

  FutureOr<void> _onAddTransaction(event, emit) async {
    event as _AddTransaction;
    emit(const _Loading());
    int totalPrice = 0;
    for (var data in event.listCartEntity) {
      totalPrice += data.quantity * data.productEntity!.price;
    }
    final result = await _addTransactionUseCase.call(
      AddTransactionParams(
        listCartEntity: event.listCartEntity,
        paymentMethod: event.paymentMethod,
        totalPrice: totalPrice.toString(),
      ),
    );
    if (result.isRight()) {
      for (var data in event.listCartEntity) {
        await _deleteCartUseCase.call(DeleteCartParams(id: data.id));
      }
    }
    result.fold(
      (l) => emit(_Failed(failure: l)),
      (r) => emit(_Success(success: r)),
    );
    emit(const _Initial());
  }
}

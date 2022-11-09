import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:medical_app/app/domain/entity/transaction/transaction_entity.dart';
import 'package:medical_app/app/domain/usecase/riview/add_riview_usecase.dart';
import 'package:medical_app/app/domain/usecase/transaction/get_all_transaction_usecase.dart';
import 'package:medical_app/core/models/no_params/no_params.dart';
import 'package:medical_app/core/values/enum.dart';

part 'history_transaction_event.dart';
part 'history_transaction_state.dart';
part 'history_transaction_bloc.freezed.dart';

class HistoryTransactionBloc
    extends Bloc<HistoryTransactionEvent, HistoryTransactionState> {
  final GetAllTransactionUseCase _getAllTransactionUseCase;
  final AddRiviewUseCase _addRiviewUseCase;
  HistoryTransactionBloc(this._getAllTransactionUseCase, this._addRiviewUseCase)
      : super(const _Initial()) {
    on<_Started>(_onStarted);
    on<_GiveRiview>(_onGiveRiview);
  }

  FutureOr<void> _onStarted(event, emit) async {
    event as _Started;
    emit(const _Loading());
    final result = await _getAllTransactionUseCase.call(NoParams());
    result.fold(
      (l) =>
          emit(const _Loaded(listTransaction: [], viewState: ViewState.loaded)),
      (r) => emit(_Loaded(listTransaction: r, viewState: ViewState.loaded)),
    );
  }

  FutureOr<void> _onGiveRiview(event, emit) async {
    event as _GiveRiview;
    emit((state as _Loaded).copyWith(viewState: ViewState.loading));
    final result = await _addRiviewUseCase.call(AddRiviewParams(
        riview: event.riview,
        idProduct: event.idProduct,
        rating: event.rating));
    result.fold(
      (l) => emit((state as _Loaded).copyWith(viewState: ViewState.failed)),
      (r) => emit((state as _Loaded).copyWith(viewState: ViewState.success)),
    );
    emit((state as _Loaded).copyWith(viewState: ViewState.loaded));
  }
}

part of 'history_transaction_bloc.dart';

@freezed
class HistoryTransactionState with _$HistoryTransactionState {
  const factory HistoryTransactionState.initial() = _Initial;
  const factory HistoryTransactionState.loading() = _Loading;
  const factory HistoryTransactionState.loaded({
    required List<TransactionEntity> listTransaction,
    required ViewState viewState,
  }) = _Loaded;
}

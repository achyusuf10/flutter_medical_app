part of 'history_transaction_bloc.dart';

@freezed
class HistoryTransactionEvent with _$HistoryTransactionEvent {
  const factory HistoryTransactionEvent.started() = _Started;
  const factory HistoryTransactionEvent.giveRiview({
    required String idProduct,
    required String riview,
    required double rating,
  }) = _GiveRiview;
}

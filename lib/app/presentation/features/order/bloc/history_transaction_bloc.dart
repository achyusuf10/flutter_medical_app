import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'history_transaction_event.dart';
part 'history_transaction_state.dart';
part 'history_transaction_bloc.freezed.dart';

class HistoryTransactionBloc extends Bloc<HistoryTransactionEvent, HistoryTransactionState> {
  HistoryTransactionBloc() : super(_Initial()) {
    on<HistoryTransactionEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}

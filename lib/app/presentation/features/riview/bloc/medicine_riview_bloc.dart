import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'medicine_riview_event.dart';
part 'medicine_riview_state.dart';
part 'medicine_riview_bloc.freezed.dart';

class MedicineRiviewBloc extends Bloc<MedicineRiviewEvent, MedicineRiviewState> {
  MedicineRiviewBloc() : super(_Initial()) {
    on<MedicineRiviewEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}

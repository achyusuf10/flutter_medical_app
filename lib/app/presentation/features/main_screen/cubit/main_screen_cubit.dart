import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:medical_app/app/domain/usecase/cart/get_all_cart_usecase.dart';
import 'package:medical_app/core/models/no_params/no_params.dart';

part 'main_screen_state.dart';
part 'main_screen_cubit.freezed.dart';

class MainScreenCubit extends Cubit<MainScreenState> {
  final GetAllCartUseCase _getAllCartUseCase;
  late StreamSubscription _streamSubscription;
  MainScreenCubit(this._getAllCartUseCase)
      : super(const MainScreenState.initial()) {
    Stream.fromFuture(
      _getAllCartUseCase.call(NoParams()),
    ).listen(
      (event) {
        event.fold((l) => null, (r) {
          emit(_Loaded(totalCart: r.length));
        });
      },
    );
  }
  @override
  Future<void> close() {
    _streamSubscription.cancel();
    return super.close();
  }
}

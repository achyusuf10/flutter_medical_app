import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:medical_app/app/domain/usecase/auth/login_with_email_password_usecase.dart';
import 'package:medical_app/core/models/failure/failure.dart';
import 'package:medical_app/core/models/success/success.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final LoginWithEmailPasswordUseCase _loginWithEmailPasswordUseCase;
  AuthBloc(this._loginWithEmailPasswordUseCase) : super(const _Initial()) {
    on<_Login>(_onLogin);
  }

  FutureOr<void> _onLogin(event, emit) async {
    event as _Login;
    emit(const _Loading());
    final result = await _loginWithEmailPasswordUseCase.call(
        LoginWithEmailPasswordParams(
            email: event.email, password: event.password));
    result.fold(
      (l) => emit(_Failed(l)),
      (r) => emit(_Success(r)),
    );
    emit(const _Initial());
  }
}

import 'package:medical_app/app/domain/repository/auth_repository.dart';
import 'package:medical_app/core/models/failure/failure.dart';

import 'package:dartz/dartz.dart';
import 'package:medical_app/core/models/success/success.dart';

import '../../../../core/base/base_usecase.dart';

class LoginWithEmailPasswordUseCase
    implements UseCase<Success, LoginWithEmailPasswordParams> {
  final AuthRepository _authRepository;

  LoginWithEmailPasswordUseCase(this._authRepository);
  @override
  Future<Either<Failure, Success>> call(params) async {
    return await _authRepository.signInWithEmailAndPassword(
        email: params.email, password: params.password);
  }
}

class LoginWithEmailPasswordParams {
  String email;
  String password;

  LoginWithEmailPasswordParams({required this.email, required this.password});
}

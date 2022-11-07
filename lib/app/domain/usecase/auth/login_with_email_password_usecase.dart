import 'package:medical_app/core/models/failure/failure.dart';

import 'package:dartz/dartz.dart';

import '../../../../core/base/base_usecase.dart';

class LoginWithEmailPasswordUseCase
    implements UseCase<Type, LoginWithEmailPasswordParams> {
  @override
  Future<Either<Failure, Type>> call(params) {
    // TODO: implement call
    throw UnimplementedError();
  }
}

class LoginWithEmailPasswordParams {}

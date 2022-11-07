import 'package:medical_app/core/models/failure/failure.dart';

import 'package:dartz/dartz.dart';

import '../../../../core/base/base_usecase.dart';

class RegisterUseCase implements UseCase<Type, RegisterParams> {
  @override
  Future<Either<Failure, Type>> call(RegisterParams params) {
    // TODO: implement call
    throw UnimplementedError();
  }
}

class RegisterParams {}

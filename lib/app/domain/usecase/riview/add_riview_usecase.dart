import 'package:medical_app/app/domain/repository/auth_repository.dart';
import 'package:medical_app/app/domain/repository/riview_repository.dart';
import 'package:medical_app/core/models/failure/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:medical_app/core/models/success/success.dart';

import '../../../../core/base/base_usecase.dart';

class AddRiviewUseCase implements UseCase<Success, AddRiviewParams> {
  final RiviewRepository _riviewRepository;
  final AuthRepository _authRepository;

  AddRiviewUseCase(this._riviewRepository, this._authRepository);
  @override
  Future<Either<Failure, Success>> call(AddRiviewParams params) async {
    return await _riviewRepository.addRiview(
        email: _authRepository.currentUser?.email ?? '',
        idProduct: params.idProduct,
        riview: params.riview,
        time: DateTime.now(),
        rating: params.rating);
  }
}

class AddRiviewParams {
  String riview, idProduct;
  double rating;
  AddRiviewParams({
    required this.riview,
    required this.idProduct,
    required this.rating,
  });
}

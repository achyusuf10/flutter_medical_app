import 'package:dartz/dartz.dart';
import 'package:medical_app/app/domain/entity/cart/cart_entity.dart';
import 'package:medical_app/app/domain/repository/auth_repository.dart';
import 'package:medical_app/app/domain/repository/cart_repository.dart';
import 'package:medical_app/core/models/failure/failure.dart';
import 'package:medical_app/core/models/no_params/no_params.dart';

import '../../../../core/base/base_usecase.dart';

class GetAllCartUseCase implements UseCase<List<CartEntity>, NoParams> {
  final CartRepository _cartRepository;
  final AuthRepository _authRepository;

  GetAllCartUseCase(this._cartRepository, this._authRepository);
  @override
  Future<Either<Failure, List<CartEntity>>> call(NoParams params) async {
    return await _cartRepository.fetchAllCart(
        email: _authRepository.currentUser == null
            ? 'test@gmail.com'
            : _authRepository.currentUser!.email ?? 'test@gmail.com');
  }
}

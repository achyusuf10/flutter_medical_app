import 'package:medical_app/app/domain/entity/cart/cart_entity.dart';
import 'package:medical_app/app/domain/repository/cart_repository.dart';
import 'package:medical_app/core/models/failure/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:medical_app/core/models/success/success.dart';

import '../../../../core/base/base_usecase.dart';

class SubtractQuantityFromCartUseCase
    implements UseCase<Success, SubtractQuantityFromCartParams> {
  final CartRepository _cartRepository;

  SubtractQuantityFromCartUseCase(this._cartRepository);
  @override
  Future<Either<Failure, Success>> call(
      SubtractQuantityFromCartParams params) async {
    return _cartRepository.updateQuantity(
        cartEntity: params.cartEntity, quantity: -1);
  }
}

class SubtractQuantityFromCartParams {
  CartEntity cartEntity;
  SubtractQuantityFromCartParams({required this.cartEntity});
}

import 'package:medical_app/app/domain/entity/cart/cart_entity.dart';
import 'package:medical_app/app/domain/repository/cart_repository.dart';
import 'package:medical_app/core/models/failure/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:medical_app/core/models/success/success.dart';

import '../../../../core/base/base_usecase.dart';

class AddQuantityToCartUseCase
    implements UseCase<Success, AddQuantityToCartParams> {
  final CartRepository _cartRepository;

  AddQuantityToCartUseCase(this._cartRepository);
  @override
  Future<Either<Failure, Success>> call(AddQuantityToCartParams params) async {
    return await _cartRepository.updateQuantity(
        cartEntity: params.cartEntity, quantity: 1);
  }
}

class AddQuantityToCartParams {
  CartEntity cartEntity;

  AddQuantityToCartParams({required this.cartEntity});
}

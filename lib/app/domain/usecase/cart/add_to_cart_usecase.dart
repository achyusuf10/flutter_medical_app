import 'package:medical_app/app/domain/entity/product/product_entity.dart';
import 'package:medical_app/app/domain/repository/cart_repository.dart';
import 'package:medical_app/core/models/failure/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:medical_app/core/models/success/success.dart';

import '../../../../core/base/base_usecase.dart';

class AddToCartUseCase implements UseCase<Success, AddToCartParams> {
  final CartRepository _cartRepository;

  AddToCartUseCase(this._cartRepository);
  @override
  Future<Either<Failure, Success>> call(AddToCartParams params) async {
    return await _cartRepository.addToCart(
        productEntity: params.productEntity,
        email: 'test@gmail.com',
        time: DateTime.now());
  }
}

class AddToCartParams {
  ProductEntity productEntity;
  AddToCartParams({required this.productEntity});
}

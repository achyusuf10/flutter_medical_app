import 'package:dartz/dartz.dart';
import 'package:medical_app/app/domain/entity/product/product_entity.dart';
import 'package:medical_app/core/models/failure/failure.dart';
import 'package:medical_app/core/models/success/success.dart';

import '../entity/cart/cart_entity.dart';

abstract class CartRepository {
  Future<Either<Failure, Success>> addToCart({
    required ProductEntity productEntity,
    required String email,
    required DateTime time,
  });
  Future<Either<Failure, Success>> deleteCart({required String id});
  Future<Either<Failure, List<CartEntity>>> fetchAllCart(
      {required String email});
  Future<Either<Failure, Success>> updateQuantity({
    required CartEntity cartEntity,
    required int quantity,
  });
}

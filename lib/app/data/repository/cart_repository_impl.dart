import 'package:medical_app/app/data/datasources/cart_remote_datasources.dart';
import 'package:medical_app/app/domain/entity/cart/cart_entity.dart';
import 'package:medical_app/app/domain/entity/product/product_entity.dart';
import 'package:medical_app/core/models/success/success.dart';

import 'package:medical_app/core/models/failure/failure.dart';

import 'package:dartz/dartz.dart';

import '../../domain/repository/cart_repository.dart';

class ICartRepository implements CartRepository {
  final CartRemoteDataSources _cartRemoteDataSources;

  ICartRepository(this._cartRemoteDataSources);
  @override
  Future<Either<Failure, Success>> updateQuantity(
      {required CartEntity cartEntity, required int quantity}) async {
    final result = await Task(() => _cartRemoteDataSources.updateQuantity(
            cartEntity: cartEntity, quantity: quantity))
        .attempt()
        .map(
          (either) => either.leftMap(
            (obj) {
              try {
                return obj as Failure;
              } catch (e) {
                return Failure(message: obj.toString());
              }
            },
          ),
        )
        .run();
    return result.fold(
      (l) => Left(l),
      (r) => Right(r),
    );
  }

  @override
  Future<Either<Failure, Success>> addToCart(
      {required ProductEntity productEntity,
      required String email,
      required DateTime time}) async {
    final result = await Task(() => _cartRemoteDataSources.addToCart(
            productEntity: productEntity, email: email, time: time))
        .attempt()
        .map(
          (either) => either.leftMap(
            (obj) {
              try {
                return obj as Failure;
              } catch (e) {
                return Failure(message: obj.toString());
              }
            },
          ),
        )
        .run();
    return result.fold(
      (l) => Left(l),
      (r) => Right(r),
    );
  }

  @override
  Future<Either<Failure, Success>> deleteCart({required String id}) async {
    final result = await Task(() => _cartRemoteDataSources.deleteCart(id: id))
        .attempt()
        .map(
          (either) => either.leftMap(
            (obj) {
              try {
                return obj as Failure;
              } catch (e) {
                return Failure(message: obj.toString());
              }
            },
          ),
        )
        .run();
    return result.fold(
      (l) => Left(l),
      (r) => Right(r),
    );
  }

  @override
  Future<Either<Failure, List<CartEntity>>> fetchAllCart(
      {required String email}) async {
    final result =
        await Task(() => _cartRemoteDataSources.fetchAllCart(email: email))
            .attempt()
            .map(
              (either) => either.leftMap(
                (obj) {
                  try {
                    return obj as Failure;
                  } catch (e) {
                    return Failure(message: obj.toString());
                  }
                },
              ),
            )
            .run();

    return result.fold(
      (l) => Left(l),
      (r) => Right(r),
    );
  }
}

import 'package:medical_app/app/data/datasources/product_remote_datasources.dart';
import 'package:medical_app/core/models/failure/failure.dart';

import 'package:medical_app/app/domain/entity/product/product_entity.dart';

import 'package:dartz/dartz.dart';

import '../../domain/repository/product_repository.dart';

class IProductRepository implements ProductRepository {
  final ProductRemoteDataSources _productRemoteDataSources;

  IProductRepository(this._productRemoteDataSources);
  @override
  Future<Either<Failure, List<ProductEntity>>> fetchAllProduct() async {
    final result = await Task(() => _productRemoteDataSources.fetchAllProduct())
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

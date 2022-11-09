import 'package:dartz/dartz.dart';

import '../../../core/models/failure/failure.dart';
import '../entity/product/product_entity.dart';

abstract class ProductRepository {
  Future<Either<Failure, List<ProductEntity>>> fetchAllProduct();
}

import 'package:dartz/dartz.dart';

import '../../../core/models/failure/failure.dart';
import '../../../core/models/success/success.dart';
import '../entity/riview/riview_entity.dart';

abstract class RiviewRepository {
  Future<Either<Failure, Success>> addRiview({
    required String email,
    required String idProduct,
    required String riview,
    required DateTime time,
    required double rating,
  });

  Future<Either<Failure, List<RiviewEntity>>> fetchAllRiview({
    required String idProduct,
  });
}

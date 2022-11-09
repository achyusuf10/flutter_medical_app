import 'package:medical_app/app/data/datasources/riview_remote_datasources.dart';
import 'package:medical_app/core/models/success/success.dart';

import 'package:medical_app/core/models/failure/failure.dart';

import 'package:medical_app/app/domain/entity/riview/riview_entity.dart';

import 'package:dartz/dartz.dart';

import '../../domain/repository/riview_repository.dart';

class IRiviewRepository implements RiviewRepository {
  final RiviewRemoteDataSources _riviewRemoteDataSources;

  IRiviewRepository(this._riviewRemoteDataSources);
  @override
  Future<Either<Failure, Success>> addRiview(
      {required String email,
      required String idProduct,
      required String riview,
      required DateTime time,
      required double rating}) async {
    final result = await Task(
      () => _riviewRemoteDataSources.addRiview(
          email: email,
          idProduct: idProduct,
          riview: riview,
          time: time,
          rating: rating),
    )
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
  Future<Either<Failure, List<RiviewEntity>>> fetchAllRiview(
      {required String idProduct}) async {
    final result = await Task(
      () => _riviewRemoteDataSources.fetchAllRiview(idProduct: idProduct),
    )
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

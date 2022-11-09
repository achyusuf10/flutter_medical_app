import 'package:medical_app/app/domain/entity/product/product_entity.dart';
import 'package:medical_app/app/domain/repository/product_repository.dart';
import 'package:medical_app/app/domain/repository/riview_repository.dart';
import 'package:medical_app/core/models/failure/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:medical_app/core/models/no_params/no_params.dart';
import '../../../../core/extensions/dartz_x.dart';
import '../../../../core/base/base_usecase.dart';
import '../../entity/riview/riview_entity.dart';

class GetAllProductUseCase implements UseCase<List<ProductEntity>, NoParams> {
  final ProductRepository _productRepository;
  final RiviewRepository _riviewRepository;

  GetAllProductUseCase(this._productRepository, this._riviewRepository);
  @override
  Future<Either<Failure, List<ProductEntity>>> call(NoParams params) async {
    var result = await _productRepository.fetchAllProduct();
    if (result.isLeft()) return Left(result.asLeft());
    var listProduct = result.asRight();

    for (var element in listProduct) {
      var listRiview = await _riviewRepository
          .fetchAllRiview(idProduct: element.id)
          .then((value) => value.fold((l) => <RiviewEntity>[], (r) => r));

      if (listRiview.isNotEmpty) {
        double totalRating = 0;
        for (var data in listRiview) {
          totalRating += data.rating;
        }
        double avrRating = totalRating / listRiview.length;
        listProduct.singleWhere((e) => e.id == element.id).rating = avrRating;
      }
    }

    return Right(result.asRight());
  }
}

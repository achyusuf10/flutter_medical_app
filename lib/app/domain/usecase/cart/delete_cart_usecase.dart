import 'package:medical_app/core/models/failure/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:medical_app/core/models/success/success.dart';

import '../../../../core/base/base_usecase.dart';
import '../../repository/cart_repository.dart';

class DeleteCartUseCase implements UseCase<Success, DeleteCartParams> {
  final CartRepository _cartRepository;

  DeleteCartUseCase(this._cartRepository);
  @override
  Future<Either<Failure, Success>> call(DeleteCartParams params) async {
    return await _cartRepository.deleteCart(id: params.id);
  }
}

class DeleteCartParams {
  String id;
  DeleteCartParams({required this.id});
}

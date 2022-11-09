import 'package:dartz/dartz.dart';
import 'package:medical_app/app/domain/entity/transaction/transaction_entity.dart';
import 'package:medical_app/core/models/success/success.dart';

import '../../../core/models/failure/failure.dart';
import '../entity/cart/cart_entity.dart';

abstract class TransactionRepository {
  Future<Either<Failure, Success>> addTransaction({
    required List<CartEntity> listCartEntity,
    required String paymentMethod,
    required String totalPrice,
    required DateTime time,
    required String email,
  });

  Future<Either<Failure, List<TransactionEntity>>> fetchAllTransaction({
    required String email,
  });
}

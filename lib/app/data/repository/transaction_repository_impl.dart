import 'package:medical_app/app/data/datasources/transaction_remote_datasources.dart';
import 'package:medical_app/app/domain/entity/transaction/transaction_entity.dart';
import 'package:medical_app/core/models/success/success.dart';

import 'package:medical_app/core/models/failure/failure.dart';

import 'package:medical_app/app/domain/entity/cart/cart_entity.dart';

import 'package:dartz/dartz.dart';

import '../../domain/repository/transaction_repository.dart';

class ITransactionRepository implements TransactionRepository {
  final TransactionRemoteDataSources _transactionRemoteDataSources;

  ITransactionRepository(this._transactionRemoteDataSources);
  @override
  Future<Either<Failure, Success>> addTransaction({
    required List<CartEntity> listCartEntity,
    required String paymentMethod,
    required String totalPrice,
    required DateTime time,
    required String email,
  }) async {
    final result = await Task(
      () => _transactionRemoteDataSources.addTransaction(
        listCartEntity: listCartEntity,
        paymentMethod: paymentMethod,
        totalPrice: totalPrice,
        time: time,
        email: email,
      ),
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
  Future<Either<Failure, List<TransactionEntity>>> fetchAllTransaction(
      {required String email}) async {
    final result = await Task(
      () => _transactionRemoteDataSources.fetchAllTransaction(email: email),
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

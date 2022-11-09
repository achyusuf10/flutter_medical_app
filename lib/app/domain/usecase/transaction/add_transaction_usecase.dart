import 'package:medical_app/app/domain/entity/cart/cart_entity.dart';
import 'package:medical_app/app/domain/repository/auth_repository.dart';
import 'package:medical_app/app/domain/repository/transaction_repository.dart';
import 'package:medical_app/core/models/failure/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:medical_app/core/models/success/success.dart';

import '../../../../core/base/base_usecase.dart';

class AddTransactionUseCase implements UseCase<Success, AddTransactionParams> {
  final TransactionRepository _transactionRepository;
  final AuthRepository _authRepository;

  AddTransactionUseCase(this._transactionRepository, this._authRepository);
  @override
  Future<Either<Failure, Success>> call(params) async {
    return await _transactionRepository.addTransaction(
      listCartEntity: params.listCartEntity,
      paymentMethod: params.paymentMethod,
      totalPrice: params.totalPrice,
      time: DateTime.now(),
      email: _authRepository.currentUser?.email ?? '',
    );
  }
}

class AddTransactionParams {
  List<CartEntity> listCartEntity;
  String paymentMethod;
  String totalPrice;

  AddTransactionParams({
    required this.listCartEntity,
    required this.paymentMethod,
    required this.totalPrice,
  });
}

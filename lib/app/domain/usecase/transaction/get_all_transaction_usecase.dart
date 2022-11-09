import 'package:dartz/dartz.dart';
import 'package:medical_app/app/domain/entity/transaction/transaction_entity.dart';
import 'package:medical_app/app/domain/repository/auth_repository.dart';
import 'package:medical_app/app/domain/repository/transaction_repository.dart';
import 'package:medical_app/core/models/failure/failure.dart';
import 'package:medical_app/core/models/no_params/no_params.dart';

import '../../../../core/base/base_usecase.dart';

class GetAllTransactionUseCase
    implements UseCase<List<TransactionEntity>, NoParams> {
  final TransactionRepository _transactionRepository;
  final AuthRepository _authRepository;

  GetAllTransactionUseCase(this._transactionRepository, this._authRepository);
  @override
  Future<Either<Failure, List<TransactionEntity>>> call(NoParams params) async {
    return await _transactionRepository.fetchAllTransaction(
        email: _authRepository.currentUser?.email ?? '');
  }
}

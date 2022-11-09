import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:medical_app/app/domain/entity/cart/cart_entity.dart';
import 'package:medical_app/app/domain/entity/transaction/transaction_entity.dart';
import 'package:medical_app/core/models/success/success.dart';

import '../../../core/models/failure/failure.dart';

abstract class TransactionRemoteDataSources {
  Future<Success> addTransaction({
    required List<CartEntity> listCartEntity,
    required String paymentMethod,
    required String totalPrice,
    required DateTime time,
    required String email,
  });
  Future<List<TransactionEntity>> fetchAllTransaction({
    required String email,
  });
}

class ITransactionRemoteDataSources implements TransactionRemoteDataSources {
  final fireStore = FirebaseFirestore.instance;
  CollectionReference transactionRef =
      FirebaseFirestore.instance.collection('transactions');
  @override
  Future<Success> addTransaction({
    required List<CartEntity> listCartEntity,
    required String paymentMethod,
    required String totalPrice,
    required DateTime time,
    required String email,
  }) async {
    try {
      final newTransaction = transactionRef.doc();
      await newTransaction.set(TransactionEntity(
        id: newTransaction.id,
        listCartEntity: listCartEntity,
        paymentMethod: paymentMethod,
        totalPrice: totalPrice,
        time: time.toIso8601String(),
        email: email,
      ).toJson());
      return Success(message: 'Success');
    } on FirebaseAuthException catch (e) {
      throw (Failure(message: e.message!));
    }
  }

  @override
  Future<List<TransactionEntity>> fetchAllTransaction(
      {required String email}) async {
    try {
      final streamTransaction = transactionRef
          .where('email', isEqualTo: email)
          .snapshots()
          .map((querySnapshot) {
        return querySnapshot.docs.map((queryDocumentSnapshot) {
          return TransactionEntity.fromDocSnapshot(queryDocumentSnapshot);
        }).toList();
      });
      final list = await streamTransaction.first;
      return list;
    } on FirebaseAuthException catch (e) {
      throw (Failure(message: e.message!));
    }
  }
}

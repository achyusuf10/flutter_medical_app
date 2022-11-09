import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:medical_app/app/domain/entity/cart/cart_entity.dart';
import 'package:medical_app/app/domain/entity/product/product_entity.dart';
import 'package:medical_app/core/models/success/success.dart';

import '../../../core/models/failure/failure.dart';

abstract class CartRemoteDataSources {
  Future<Success> addToCart({
    required ProductEntity productEntity,
    required String email,
    required DateTime time,
  });
  Future<Success> deleteCart({required String id});
  Future<List<CartEntity>> fetchAllCart({required String email});
  Future<Success> updateQuantity(
      {required CartEntity cartEntity, required int quantity});
}

class ICartRemoteDataSources implements CartRemoteDataSources {
  final fireStore = FirebaseFirestore.instance;
  CollectionReference cartRef = FirebaseFirestore.instance.collection('carts');

  @override
  Future<Success> addToCart({
    required ProductEntity productEntity,
    required String email,
    required DateTime time,
  }) async {
    final checkCart = await cartRef
        .where('productEntity.id', isEqualTo: productEntity.id)
        .where('emailUser', isEqualTo: email)
        .get()
        .then(
          (value) =>
              value.docs.map((e) => CartEntity.fromDocSnapshot(e)).toList(),
        );
    if (checkCart.isNotEmpty) {
      return await updateQuantity(cartEntity: checkCart.first, quantity: 1);
    }
    try {
      final newCart = cartRef.doc();
      await newCart.set(
        CartEntity(
          id: newCart.id,
          productEntity: productEntity,
          emailUser: email,
          quantity: 1,
          time: time.toIso8601String(),
        ).toJson(),
      );
      return Success(message: 'Success');
    } on FirebaseAuthException catch (e) {
      throw (Failure(message: e.message!));
    }
  }

  @override
  Future<Success> deleteCart({required String id}) async {
    try {
      await cartRef.doc(id).delete();
      return Success(message: 'Success');
    } on FirebaseAuthException catch (e) {
      throw (Failure(message: e.message!));
    }
  }

  @override
  Future<List<CartEntity>> fetchAllCart({required String email}) async {
    try {
      final listCart = await cartRef
          .where('emailUser', isEqualTo: email)
          .get()
          .then(
            (value) =>
                value.docs.map((e) => CartEntity.fromDocSnapshot(e)).toList(),
          );
      return listCart;
    } on FirebaseAuthException catch (e) {
      throw (Failure(message: e.message!));
    }
  }

  @override
  Future<Success> updateQuantity(
      {required CartEntity cartEntity, required int quantity}) async {
    try {
      cartEntity.quantity += quantity;
      await cartRef.doc(cartEntity.id).update(cartEntity.toJson());
      return Success(message: 'Success');
    } on FirebaseAuthException catch (e) {
      throw (Failure(message: e.message!));
    }
  }
}

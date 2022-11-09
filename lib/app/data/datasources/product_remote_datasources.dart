import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:medical_app/app/domain/entity/product/product_entity.dart';

import '../../../core/models/failure/failure.dart';

abstract class ProductRemoteDataSources {
  Future<List<ProductEntity>> fetchAllProduct();
}

class IProductRemoteDataSources implements ProductRemoteDataSources {
  final fireStore = FirebaseFirestore.instance;
  CollectionReference productRef =
      FirebaseFirestore.instance.collection('products');
  @override
  Future<List<ProductEntity>> fetchAllProduct() async {
    try {
      final streamListGroup = productRef
          .orderBy('name', descending: true)
          .snapshots()
          .map((querySnapshot) {
        return querySnapshot.docs.map((queryDocumentSnapshot) {
          return ProductEntity.fromDocSnapshot(queryDocumentSnapshot);
        }).toList();
      });
      final list = await streamListGroup.first;
      return list;
    } on FirebaseAuthException catch (e) {
      throw (Failure(message: e.message!));
    }
  }
}

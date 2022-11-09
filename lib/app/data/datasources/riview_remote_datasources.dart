import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../../core/models/failure/failure.dart';
import '../../../core/models/success/success.dart';
import '../../domain/entity/riview/riview_entity.dart';

abstract class RiviewRemoteDataSources {
  Future<Success> addRiview({
    required String email,
    required String idProduct,
    required String riview,
    required DateTime time,
    required double rating,
  });

  Future<List<RiviewEntity>> fetchAllRiview({
    required String idProduct,
  });
}

class IRiviewRemoteDataSources implements RiviewRemoteDataSources {
  final fireStore = FirebaseFirestore.instance;
  CollectionReference riviewRef =
      FirebaseFirestore.instance.collection('riviews');
  @override
  Future<Success> addRiview(
      {required String email,
      required String idProduct,
      required String riview,
      required DateTime time,
      required double rating}) async {
    try {
      final newRiview = riviewRef.doc();
      await newRiview.set(RiviewEntity(
        id: newRiview.id,
        riview: riview,
        idProduct: idProduct,
        rating: rating,
        time: time.toIso8601String(),
        email: email,
      ).toJson());
      return Success(message: 'Success');
    } on FirebaseAuthException catch (e) {
      throw (Failure(message: e.message!));
    }
  }

  @override
  Future<List<RiviewEntity>> fetchAllRiview({required String idProduct}) async {
    try {
      final streamRiview = riviewRef
          .where('idProduct', isEqualTo: idProduct)
          .snapshots()
          .map((querySnapshot) {
        return querySnapshot.docs.map((queryDocumentSnapshot) {
          return RiviewEntity.fromDocSnapshot(queryDocumentSnapshot);
        }).toList();
      });
      final list = await streamRiview.first;
      return list;
    } on FirebaseAuthException catch (e) {
      throw (Failure(message: e.message!));
    }
  }
}

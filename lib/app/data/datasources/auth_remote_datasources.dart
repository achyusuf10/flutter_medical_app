import 'package:firebase_auth/firebase_auth.dart';
import 'package:medical_app/core/models/failure/failure.dart';
import 'package:medical_app/core/models/success/success.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

abstract class AuthRemoteDataSources {
  Future<Success> createUserWithEmailAndPassword({
    required String email,
    required String password,
  });
  Future<Success> signInWithEmailAndPassword({
    required String email,
    required String password,
  });
  Future<Success> logout();
  User? get currentUser;
  Stream<User?> get authStateChanges;
}

class IAuthRemoteDataSources implements AuthRemoteDataSources {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final fireStore = FirebaseFirestore.instance;
  CollectionReference usersRef = FirebaseFirestore.instance.collection('users');

  @override
  Stream<User?> get authStateChanges => _firebaseAuth.authStateChanges();

  @override
  Future<Success> createUserWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return Success(message: 'Success Register');
    } on FirebaseAuthException catch (e) {
      throw (Failure(message: e.message!));
    }
  }

  @override
  User? get currentUser => _firebaseAuth.currentUser;

  @override
  Future<Success> logout() async {
    try {
      await _firebaseAuth.signOut();
      return Success(message: 'Success Logout');
    } on FirebaseAuthException catch (e) {
      throw (Failure(message: e.message!));
    }
  }

  @override
  Future<Success> signInWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      await usersRef.doc(email).set({
        "email": email,
      });
      return Success(message: 'Success Login');
    } on FirebaseAuthException catch (e) {
      throw (Failure(message: e.message!));
    }
  }
}

import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:medical_app/core/models/failure/failure.dart';

import '../../../core/models/success/success.dart';

abstract class AuthRepository {
  Future<Either<Failure, Success>> createUserWithEmailAndPassword({
    required String email,
    required String password,
  });
  Future<Either<Failure, Success>> signInWithEmailAndPassword({
    required String email,
    required String password,
  });
  Future<Either<Failure, Success>> logout();
  User? get currentUser;
  Stream<User?> get authStateChanges;
}

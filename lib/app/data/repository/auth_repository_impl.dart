import 'package:medical_app/app/data/datasources/auth_remote_datasources.dart';
import 'package:medical_app/core/models/success/success.dart';

import 'package:medical_app/core/models/failure/failure.dart';

import 'package:firebase_auth/firebase_auth.dart';

import 'package:dartz/dartz.dart';

import '../../domain/repository/auth_repository.dart';

class IAuthRepository implements AuthRepository {
  final AuthRemoteDataSources _authRemoteDataSources;

  IAuthRepository(this._authRemoteDataSources);
  @override
  Stream<User?> get authStateChanges => _authRemoteDataSources.authStateChanges;

  @override
  Future<Either<Failure, Success>> createUserWithEmailAndPassword(
      {required String email, required String password}) async {
    final result = await Task(() => _authRemoteDataSources
            .createUserWithEmailAndPassword(email: email, password: password))
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
  User? get currentUser => _authRemoteDataSources.currentUser;

  @override
  Future<Either<Failure, Success>> logout() async {
    final result = await Task(() => _authRemoteDataSources.logout())
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
  Future<Either<Failure, Success>> signInWithEmailAndPassword(
      {required String email, required String password}) async {
    final result = await Task(() => _authRemoteDataSources
            .signInWithEmailAndPassword(email: email, password: password))
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

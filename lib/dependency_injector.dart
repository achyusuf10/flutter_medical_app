import 'package:get_it/get_it.dart';
import 'package:medical_app/app/domain/repository/auth_repository.dart';
import 'package:medical_app/app/domain/repository/cart_repository.dart';
import 'package:medical_app/app/domain/repository/transaction_repository.dart';
import 'package:medical_app/app/domain/repository/product_repository.dart';
import 'package:medical_app/app/domain/repository/riview_repository.dart';
import 'package:medical_app/app/presentation/features/auth/bloc/auth_bloc.dart';
import 'package:medical_app/app/presentation/features/cart/bloc/cart_bloc.dart';
import 'package:medical_app/app/presentation/features/home/bloc/home_bloc.dart';

import 'package:medical_app/app/presentation/features/product/bloc/product_bloc.dart';
import 'package:medical_app/routes/app_route.gr.dart';

import 'app/data/datasources/auth_remote_datasources.dart';
import 'app/data/datasources/cart_remote_datasources.dart';
import 'app/data/datasources/product_remote_datasources.dart';
import 'app/data/datasources/riview_remote_datasources.dart';
import 'app/data/datasources/transaction_remote_datasources.dart';
import 'app/data/repository/auth_repository_impl.dart';
import 'app/data/repository/cart_repository_impl.dart';
import 'app/data/repository/transaction_repository_impl.dart';
import 'app/data/repository/product_repository_impl.dart';
import 'app/data/repository/riview_repository_impl.dart';
import 'app/presentation/features/profile/bloc/profile_bloc.dart';
import 'app/presentation/features/transaction/bloc/history_transaction_bloc.dart';
import 'app/presentation/features/transaction/bloc/payment_bloc.dart';

GetIt di = GetIt.instance;

void setupLocator() {
  //NOTE: BLOC
  di.registerLazySingleton<AuthBloc>(() => AuthBloc());
  di.registerLazySingleton<CartBloc>(() => CartBloc());
  di.registerLazySingleton<HomeBloc>(() => HomeBloc());
  di.registerLazySingleton<PaymentBloc>(() => PaymentBloc());
  di.registerLazySingleton<HistoryTransactionBloc>(
      () => HistoryTransactionBloc());
  di.registerLazySingleton<ProductBloc>(() => ProductBloc());
  di.registerLazySingleton<ProfileBloc>(() => ProfileBloc());

  //NOTE : USECASE

  //NOTE : REPOSITORY
  di.registerLazySingleton<AuthRepository>(() => IAuthRepository());
  di.registerLazySingleton<CartRepository>(() => ICartRepository());
  di.registerLazySingleton<TransactionRepository>(
      () => ITransactionRepository());
  di.registerLazySingleton<ProductRepository>(() => IProductRepository());
  di.registerLazySingleton<RiviewRepository>(() => IRiviewRepository());

  //NOTE : DATASOURCE
  di.registerLazySingleton<AuthRemoteDataSources>(
      () => IAuthRemoteDataSources());
  di.registerLazySingleton<CartRemoteDataSources>(
      () => ICartRemoteDataSources());
  di.registerLazySingleton<TransactionRemoteDataSources>(
      () => ITransactionRemoteDataSources());
  di.registerLazySingleton<ProductRemoteDataSources>(
      () => IProductRemoteDataSources());
  di.registerLazySingleton<RiviewRemoteDataSources>(
      () => IRiviewRemoteDataSources());

  //NOTE : OTHER
  di.registerLazySingleton<AppRouter>(() => AppRouter());
}

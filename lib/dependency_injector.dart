import 'package:get_it/get_it.dart';
import 'package:medical_app/app/domain/repository/auth_repository.dart';
import 'package:medical_app/app/domain/repository/cart_repository.dart';
import 'package:medical_app/app/domain/repository/transaction_repository.dart';
import 'package:medical_app/app/domain/repository/product_repository.dart';
import 'package:medical_app/app/domain/repository/riview_repository.dart';
import 'package:medical_app/app/domain/usecase/auth/login_with_email_password_usecase.dart';
import 'package:medical_app/app/domain/usecase/riview/add_riview_usecase.dart';
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
import 'app/domain/usecase/cart/add_quantity_to_cart_usecase.dart';
import 'app/domain/usecase/cart/add_to_cart_usecase.dart';
import 'app/domain/usecase/cart/delete_cart_usecase.dart';
import 'app/domain/usecase/cart/get_all_cart_usecase.dart';
import 'app/domain/usecase/cart/subtract_quantity_from_cart_usecase.dart';
import 'app/domain/usecase/product/get_all_product_usecase.dart';
import 'app/domain/usecase/transaction/add_transaction_usecase.dart';
import 'app/domain/usecase/transaction/get_all_transaction_usecase.dart';
import 'app/presentation/features/profile/bloc/profile_bloc.dart';
import 'app/presentation/features/transaction/bloc/history_transaction_bloc.dart';
import 'app/presentation/features/transaction/bloc/payment_bloc.dart';

GetIt di = GetIt.instance;

void setupLocator() {
  //NOTE: BLOC
  di.registerLazySingleton<AuthBloc>(() => AuthBloc(di.get()));
  di.registerLazySingleton<CartBloc>(
      () => CartBloc(di.get(), di.get(), di.get(), di.get()));
  di.registerLazySingleton<HomeBloc>(() => HomeBloc());
  di.registerLazySingleton<PaymentBloc>(() => PaymentBloc(
        di.get(),
        di.get(),
      ));
  di.registerLazySingleton<HistoryTransactionBloc>(
      () => HistoryTransactionBloc(di.get(), di.get()));
  di.registerLazySingleton<ProductBloc>(() => ProductBloc(di.get(), di.get()));
  di.registerLazySingleton<ProfileBloc>(() => ProfileBloc());

  //NOTE : USECASE
  di.registerLazySingleton<LoginWithEmailPasswordUseCase>(
      () => LoginWithEmailPasswordUseCase(di.get()));
  di.registerLazySingleton<GetAllProductUseCase>(
      () => GetAllProductUseCase(di.get(), di.get()));
  di.registerLazySingleton<AddQuantityToCartUseCase>(
      () => AddQuantityToCartUseCase(di.get()));
  di.registerLazySingleton<AddToCartUseCase>(() => AddToCartUseCase(di.get()));
  di.registerLazySingleton<DeleteCartUseCase>(
      () => DeleteCartUseCase(di.get()));
  di.registerLazySingleton<GetAllCartUseCase>(
      () => GetAllCartUseCase(di.get(), di.get()));
  di.registerLazySingleton<SubtractQuantityFromCartUseCase>(
      () => SubtractQuantityFromCartUseCase(di.get()));
  di.registerLazySingleton<AddTransactionUseCase>(
      () => AddTransactionUseCase(di.get(), di.get()));
  di.registerLazySingleton<GetAllTransactionUseCase>(
      () => GetAllTransactionUseCase(
            di.get(),
            di.get(),
          ));
  di.registerLazySingleton<AddRiviewUseCase>(() => AddRiviewUseCase(
        di.get(),
        di.get(),
      ));

  //NOTE : REPOSITORY
  di.registerLazySingleton<AuthRepository>(() => IAuthRepository(di.get()));
  di.registerLazySingleton<CartRepository>(() => ICartRepository(di.get()));
  di.registerLazySingleton<TransactionRepository>(
      () => ITransactionRepository(di.get()));
  di.registerLazySingleton<ProductRepository>(
      () => IProductRepository(di.get()));
  di.registerLazySingleton<RiviewRepository>(() => IRiviewRepository(di.get()));

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

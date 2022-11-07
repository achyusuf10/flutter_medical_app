import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_app/app/presentation/features/auth/bloc/auth_bloc.dart';
import 'package:medical_app/bloc_observer.dart';
import 'package:medical_app/routes/app_route.gr.dart';

import 'app/presentation/features/cart/bloc/cart_bloc.dart';
import 'app/presentation/features/home/bloc/home_bloc.dart';
import 'app/presentation/features/product/bloc/product_bloc.dart';
import 'app/presentation/features/profile/bloc/profile_bloc.dart';
import 'app/presentation/features/transaction/bloc/history_transaction_bloc.dart';
import 'app/presentation/features/transaction/bloc/payment_bloc.dart';
import 'core/themes/theme_data.dart';
import 'dependency_injector.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  Bloc.observer = MyBlocObserver();
  setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(create: (context) => di.get()),
        BlocProvider<CartBloc>(create: (context) => di.get()),
        BlocProvider<HomeBloc>(create: (context) => di.get()),
        BlocProvider<PaymentBloc>(create: (context) => di.get()),
        BlocProvider<HistoryTransactionBloc>(create: (context) => di.get()),
        BlocProvider<ProductBloc>(create: (context) => di.get()),
        BlocProvider<ProfileBloc>(create: (context) => di.get()),
      ],
      child: ScreenUtilInit(
        designSize: const Size(428, 926),
        minTextAdapt: true,
        builder: (context, child) {
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            theme: myThemeData,
            routeInformationParser: di.get<AppRouter>().defaultRouteParser(),
            routeInformationProvider: di.get<AppRouter>().routeInfoProvider(),
            routerDelegate: di.get<AppRouter>().delegate(),
          );
        },
      ),
    );
  }
}

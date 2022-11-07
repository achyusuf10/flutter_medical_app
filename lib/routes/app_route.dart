import 'package:auto_route/auto_route.dart';
import 'package:medical_app/app/presentation/features/auth/views/login_view.dart';
import 'package:medical_app/app/presentation/features/booking/views/booking_view.dart';
import 'package:medical_app/app/presentation/features/cart/views/cart_view.dart';
import 'package:medical_app/app/presentation/features/home/views/home_view.dart';
import 'package:medical_app/app/presentation/features/main_screen/views/main_screen_view.dart';
import 'package:medical_app/app/presentation/features/product/views/product_view.dart';
import 'package:medical_app/app/presentation/features/profile/views/profile_view.dart';
import 'package:medical_app/app/presentation/features/transaction/views/checkout_view.dart';
import 'package:medical_app/app/presentation/features/transaction/views/payment_view.dart';
import 'package:medical_app/app/presentation/features/transaction/views/transaction_view.dart';

import '../app/presentation/features/auth/views/splash_view.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'View,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SplashView, initial: true),
    CustomRoute(
      page: LoginView,
      path: '/login',
      transitionsBuilder: TransitionsBuilders.fadeIn,
      durationInMilliseconds: 500,
    ),
    CustomRoute(
        page: MainScreenView,
        path: '/main',
        transitionsBuilder: TransitionsBuilders.fadeIn,
        durationInMilliseconds: 500,
        children: [
          AutoRoute(
            maintainState: false,
            path: 'profile',
            page: ProfileView,
          ),
          AutoRoute(
            maintainState: false,
            path: 'product',
            page: ProductView,
          ),
          AutoRoute(
            maintainState: false,
            path: 'home',
            page: HomeView,
            initial: true,
          ),
          AutoRoute(
            maintainState: false,
            path: 'booking',
            page: BookingView,
          ),
          AutoRoute(
            maintainState: false,
            path: 'transaction',
            page: TransactionView,
          ),
        ]),
    CustomRoute(
      page: CartView,
      path: '/cart',
      transitionsBuilder: TransitionsBuilders.fadeIn,
      durationInMilliseconds: 500,
    ),
    CustomRoute(
      page: CheckoutView,
      path: '/checkout',
      transitionsBuilder: TransitionsBuilders.fadeIn,
      durationInMilliseconds: 500,
    ),
    CustomRoute(
      page: PaymentView,
      path: '/payment',
      transitionsBuilder: TransitionsBuilders.fadeIn,
      durationInMilliseconds: 500,
    ),
  ],
)
class $AppRouter {}

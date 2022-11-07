// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i12;
import 'package:flutter/material.dart' as _i13;

import '../app/presentation/features/auth/views/login_view.dart' as _i2;
import '../app/presentation/features/auth/views/splash_view.dart' as _i1;
import '../app/presentation/features/booking/views/booking_view.dart' as _i10;
import '../app/presentation/features/cart/views/cart_view.dart' as _i4;
import '../app/presentation/features/home/views/home_view.dart' as _i9;
import '../app/presentation/features/main_screen/views/main_screen_view.dart'
    as _i3;
import '../app/presentation/features/product/views/product_view.dart' as _i8;
import '../app/presentation/features/profile/views/profile_view.dart' as _i7;
import '../app/presentation/features/transaction/views/checkout_view.dart'
    as _i5;
import '../app/presentation/features/transaction/views/payment_view.dart'
    as _i6;
import '../app/presentation/features/transaction/views/transaction_view.dart'
    as _i11;

class AppRouter extends _i12.RootStackRouter {
  AppRouter([_i13.GlobalKey<_i13.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i12.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.SplashView(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i12.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i2.LoginView(),
        transitionsBuilder: _i12.TransitionsBuilders.fadeIn,
        durationInMilliseconds: 500,
        opaque: true,
        barrierDismissible: false,
      );
    },
    MainScreenRoute.name: (routeData) {
      return _i12.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i3.MainScreenView(),
        transitionsBuilder: _i12.TransitionsBuilders.fadeIn,
        durationInMilliseconds: 500,
        opaque: true,
        barrierDismissible: false,
      );
    },
    CartRoute.name: (routeData) {
      return _i12.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i4.CartView(),
        transitionsBuilder: _i12.TransitionsBuilders.fadeIn,
        durationInMilliseconds: 500,
        opaque: true,
        barrierDismissible: false,
      );
    },
    CheckoutRoute.name: (routeData) {
      return _i12.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i5.CheckoutView(),
        transitionsBuilder: _i12.TransitionsBuilders.fadeIn,
        durationInMilliseconds: 500,
        opaque: true,
        barrierDismissible: false,
      );
    },
    PaymentRoute.name: (routeData) {
      return _i12.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i6.PaymentView(),
        transitionsBuilder: _i12.TransitionsBuilders.fadeIn,
        durationInMilliseconds: 500,
        opaque: true,
        barrierDismissible: false,
      );
    },
    ProfileRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i7.ProfileView(),
        maintainState: false,
      );
    },
    ProductRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i8.ProductView(),
        maintainState: false,
      );
    },
    HomeRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i9.HomeView(),
        maintainState: false,
      );
    },
    BookingRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i10.BookingView(),
        maintainState: false,
      );
    },
    TransactionRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i11.TransactionView(),
        maintainState: false,
      );
    },
  };

  @override
  List<_i12.RouteConfig> get routes => [
        _i12.RouteConfig(
          SplashRoute.name,
          path: '/',
        ),
        _i12.RouteConfig(
          LoginRoute.name,
          path: '/login',
        ),
        _i12.RouteConfig(
          MainScreenRoute.name,
          path: '/main',
          children: [
            _i12.RouteConfig(
              '#redirect',
              path: '',
              parent: MainScreenRoute.name,
              redirectTo: 'home',
              fullMatch: true,
            ),
            _i12.RouteConfig(
              ProfileRoute.name,
              path: 'profile',
              parent: MainScreenRoute.name,
            ),
            _i12.RouteConfig(
              ProductRoute.name,
              path: 'product',
              parent: MainScreenRoute.name,
            ),
            _i12.RouteConfig(
              HomeRoute.name,
              path: 'home',
              parent: MainScreenRoute.name,
            ),
            _i12.RouteConfig(
              BookingRoute.name,
              path: 'booking',
              parent: MainScreenRoute.name,
            ),
            _i12.RouteConfig(
              TransactionRoute.name,
              path: 'transaction',
              parent: MainScreenRoute.name,
            ),
          ],
        ),
        _i12.RouteConfig(
          CartRoute.name,
          path: '/cart',
        ),
        _i12.RouteConfig(
          CheckoutRoute.name,
          path: '/checkout',
        ),
        _i12.RouteConfig(
          PaymentRoute.name,
          path: '/payment',
        ),
      ];
}

/// generated route for
/// [_i1.SplashView]
class SplashRoute extends _i12.PageRouteInfo<void> {
  const SplashRoute()
      : super(
          SplashRoute.name,
          path: '/',
        );

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.LoginView]
class LoginRoute extends _i12.PageRouteInfo<void> {
  const LoginRoute()
      : super(
          LoginRoute.name,
          path: '/login',
        );

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i3.MainScreenView]
class MainScreenRoute extends _i12.PageRouteInfo<void> {
  const MainScreenRoute({List<_i12.PageRouteInfo>? children})
      : super(
          MainScreenRoute.name,
          path: '/main',
          initialChildren: children,
        );

  static const String name = 'MainScreenRoute';
}

/// generated route for
/// [_i4.CartView]
class CartRoute extends _i12.PageRouteInfo<void> {
  const CartRoute()
      : super(
          CartRoute.name,
          path: '/cart',
        );

  static const String name = 'CartRoute';
}

/// generated route for
/// [_i5.CheckoutView]
class CheckoutRoute extends _i12.PageRouteInfo<void> {
  const CheckoutRoute()
      : super(
          CheckoutRoute.name,
          path: '/checkout',
        );

  static const String name = 'CheckoutRoute';
}

/// generated route for
/// [_i6.PaymentView]
class PaymentRoute extends _i12.PageRouteInfo<void> {
  const PaymentRoute()
      : super(
          PaymentRoute.name,
          path: '/payment',
        );

  static const String name = 'PaymentRoute';
}

/// generated route for
/// [_i7.ProfileView]
class ProfileRoute extends _i12.PageRouteInfo<void> {
  const ProfileRoute()
      : super(
          ProfileRoute.name,
          path: 'profile',
        );

  static const String name = 'ProfileRoute';
}

/// generated route for
/// [_i8.ProductView]
class ProductRoute extends _i12.PageRouteInfo<void> {
  const ProductRoute()
      : super(
          ProductRoute.name,
          path: 'product',
        );

  static const String name = 'ProductRoute';
}

/// generated route for
/// [_i9.HomeView]
class HomeRoute extends _i12.PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: 'home',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i10.BookingView]
class BookingRoute extends _i12.PageRouteInfo<void> {
  const BookingRoute()
      : super(
          BookingRoute.name,
          path: 'booking',
        );

  static const String name = 'BookingRoute';
}

/// generated route for
/// [_i11.TransactionView]
class TransactionRoute extends _i12.PageRouteInfo<void> {
  const TransactionRoute()
      : super(
          TransactionRoute.name,
          path: 'transaction',
        );

  static const String name = 'TransactionRoute';
}

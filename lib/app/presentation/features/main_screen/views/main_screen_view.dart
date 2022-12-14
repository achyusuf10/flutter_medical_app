import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_app/app/presentation/features/main_screen/cubit/main_screen_cubit.dart';
import 'package:medical_app/core/themes/color_style.dart';
import 'package:medical_app/core/themes/text_style.dart';
import 'package:medical_app/routes/app_route.gr.dart';
import 'package:my_widget_package/helper/no_scroll_glow_behavior.dart';

class MainScreenView extends StatelessWidget {
  const MainScreenView({super.key});
  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: const [
        ProfileRoute(),
        ProductRoute(),
        HomeRoute(),
        BookingRoute(),
        TransactionRoute(),
      ],
      builder: (context, child, animation) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          resizeToAvoidBottomInset: true,
          appBar: AppBar(
            title: Image.asset(
              'assets/images/logo.png',
              height: 24.w,
            ),
            actions: [
              BlocBuilder<MainScreenCubit, MainScreenState>(
                builder: (context, state) {
                  return Stack(
                    children: [
                      IconButton(
                        onPressed: () {
                          context.navigateTo(const CartRoute());
                        },
                        icon: const Icon(
                          Icons.shopping_cart_outlined,
                          color: Colors.white,
                        ),
                      ),
                      state.mapOrNull(
                            loaded: (value) => Visibility(
                              visible: value.totalCart != 0,
                              child: Container(
                                width: 12,
                                height: 12,
                                alignment: Alignment.center,
                                margin:
                                    const EdgeInsets.only(top: 10, left: 10),
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle, color: Colors.red),
                                child: Text(
                                  '${value.totalCart}',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText2!
                                      .copyWith(fontSize: 8.sp),
                                ),
                              ),
                            ),
                          ) ??
                          const SizedBox(),
                    ],
                  );
                },
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.settings,
                  color: Colors.white,
                ),
              )
            ],
          ),
          body: FadeTransition(
            opacity: animation,
            // the passed child is techinaclly our animated selected-tab page
            child: ScrollConfiguration(
              behavior: NoScrollGlowBehavior(),
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: child,
              ),
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            elevation: 10,
            selectedItemColor: Theme.of(context).primaryColor,
            unselectedItemColor: grey1,
            currentIndex: tabsRouter.activeIndex,
            selectedLabelStyle: openSansRegular.copyWith(fontSize: 11),
            unselectedLabelStyle: openSansRegular.copyWith(fontSize: 9),
            showUnselectedLabels: true,
            onTap: (index) {
              tabsRouter.setActiveIndex(index);
            },
            items: const [
              BottomNavigationBarItem(
                backgroundColor: Colors.white,
                label: 'Profile',
                icon: Icon(
                  Icons.person_outline_rounded,
                ),
              ),
              BottomNavigationBarItem(
                backgroundColor: Colors.white,
                label: 'Product',
                icon: Icon(
                  Icons.medical_services_outlined,
                ),
              ),
              BottomNavigationBarItem(
                backgroundColor: Colors.white,
                label: 'Home',
                icon: Icon(
                  Icons.home_outlined,
                ),
              ),
              BottomNavigationBarItem(
                backgroundColor: Colors.white,
                label: 'Booking',
                icon: Icon(
                  Icons.date_range_outlined,
                ),
              ),
              BottomNavigationBarItem(
                backgroundColor: Colors.white,
                label: 'Transaction',
                icon: Icon(
                  Icons.receipt_long_outlined,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

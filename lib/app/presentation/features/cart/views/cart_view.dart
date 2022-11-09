import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_app/core/helper/converter/currency_converter.dart';
import 'package:medical_app/routes/app_route.gr.dart';
import 'package:my_widget_package/helper/no_scroll_glow_behavior.dart';
import 'package:my_widget_package/widgets/circular_loading.dart';
import 'package:my_widget_package/widgets/custom_button.dart';

import '../bloc/cart_bloc.dart';
import '../widgets/card_product_cart.dart';

class CartView extends HookWidget {
  const CartView({super.key});
  @override
  Widget build(BuildContext context) {
    useEffect(() {
      context.read<CartBloc>().add(const CartEvent.started());
      return null;
    });
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Cart',
          style: Theme.of(context)
              .textTheme
              .headline3!
              .copyWith(color: Colors.white),
        ),
      ),
      body: BlocBuilder<CartBloc, CartState>(
        builder: (context, state) {
          return state.mapOrNull(
                  loading: (value) => const CircularLoading(),
                  loaded: (value) {
                    int totalPrice = 0;
                    for (var element in value.listCart) {
                      totalPrice +=
                          element.quantity * element.productEntity!.price;
                    }

                    return Stack(
                      children: [
                        ScrollConfiguration(
                          behavior: NoScrollGlowBehavior(),
                          child: SingleChildScrollView(
                            padding: const EdgeInsets.symmetric(horizontal: 24),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Checkbox(
                                      value: true,
                                      onChanged: (value) {},
                                    ),
                                    Text(
                                      'Select All',
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline4!
                                          .copyWith(color: Colors.black),
                                    ),
                                  ],
                                ),
                                ListView.separated(
                                  primary: false,
                                  shrinkWrap: true,
                                  itemBuilder: (context, index) =>
                                      CardProductCart(
                                          cartEntity: value.listCart[index]),
                                  separatorBuilder: (context, index) =>
                                      const SizedBox(
                                    height: 14,
                                  ),
                                  itemCount: value.listCart.length,
                                ),
                                const SizedBox(
                                  height: 18,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Visibility(
                            visible: value.listCart.isNotEmpty,
                            child: TotalCart(
                              total: totalPrice,
                            ))
                      ],
                    );
                  }) ??
              const SizedBox();
        },
      ),
    );
  }
}

class TotalCart extends StatelessWidget {
  final int total;
  const TotalCart({
    Key? key,
    required this.total,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        width: double.infinity,
        height: 80.h,
        decoration: const BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
            color: Colors.black45,
            blurRadius: 3,
          )
        ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Total',
                  style: Theme.of(context).textTheme.headline3!.copyWith(
                        color: Colors.black,
                      ),
                ),
                Text(
                  CurrencyConverter.rpFormating(total),
                  style: Theme.of(context).textTheme.headline3,
                ),
              ],
            ),
            CustomButton(
              width: 100,
              onPressed: () {
                context.navigateTo(
                  CheckoutRoute(
                    listCart: context.read<CartBloc>().state.mapOrNull(
                              loaded: (value) => value.listCart,
                            ) ??
                        [],
                  ),
                );
              },
              child: Text(
                'Checkout',
                style: Theme.of(context)
                    .textTheme
                    .headline4!
                    .copyWith(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}

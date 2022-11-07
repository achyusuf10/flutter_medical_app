import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_app/routes/app_route.gr.dart';
import 'package:my_widget_package/helper/no_scroll_glow_behavior.dart';
import 'package:my_widget_package/widgets/custom_button.dart';

import '../widgets/card_product_cart.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});
  @override
  Widget build(BuildContext context) {
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
      body: Stack(
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
                      itemBuilder: (context, index) => const CardProductCart(),
                      separatorBuilder: (context, index) => const SizedBox(
                            height: 14,
                          ),
                      itemCount: 5),
                  const SizedBox(
                    height: 18,
                  ),
                ],
              ),
            ),
          ),
          Align(
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
                        'Rp. 10.000',
                        style: Theme.of(context).textTheme.headline3,
                      ),
                    ],
                  ),
                  CustomButton(
                    width: 100,
                    onPressed: () {
                      context.navigateTo(const CheckoutRoute());
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
          )
        ],
      ),
    );
  }
}

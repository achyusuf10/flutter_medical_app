import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_app/app/domain/entity/cart/cart_entity.dart';
import 'package:medical_app/app/presentation/features/transaction/widgets/card_delivery_service.dart';
import 'package:medical_app/app/presentation/features/transaction/widgets/card_product_checkout.dart';
import 'package:medical_app/core/helper/converter/currency_converter.dart';
import 'package:medical_app/routes/app_route.gr.dart';
import 'package:my_widget_package/helper/no_scroll_glow_behavior.dart';
import 'package:my_widget_package/widgets/custom_button.dart';
import 'package:my_widget_package/widgets/custom_text_form_field.dart';

class CheckoutView extends HookWidget {
  final List<CartEntity> listCart;
  const CheckoutView({
    super.key,
    required this.listCart,
  });
  @override
  Widget build(BuildContext context) {
    int totalPrice = 0;
    for (var element in listCart) {
      totalPrice += element.quantity * element.productEntity!.price;
    }
    final addressC = useTextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Checkout',
          style: Theme.of(context)
              .textTheme
              .headline3!
              .copyWith(color: Colors.white),
        ),
      ),
      body: ScrollConfiguration(
        behavior: NoScrollGlowBehavior(),
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 24.h,
              ),
              Text(
                'Shipping Address',
                style: Theme.of(context).textTheme.headline3,
              ),
              SizedBox(
                height: 18.h,
              ),
              CustomTextFormField(
                maxLines: 4,
                controller: addressC,
                hintText: 'Masukkan Alamat Rumah Kamu',
                useLabel: false,
                prefix: Icon(
                  Icons.home,
                  color: Theme.of(context).primaryColor,
                ),
              ),
              SizedBox(
                height: 24.h,
              ),
              Text(
                'Items',
                style: Theme.of(context).textTheme.headline3,
              ),
              SizedBox(
                height: 18.h,
              ),
              ListView.separated(
                primary: false,
                shrinkWrap: true,
                itemBuilder: (context, index) => CardProductCheckout(
                  cartEntity: listCart[index],
                ),
                separatorBuilder: (context, index) => const SizedBox(
                  height: 14,
                ),
                itemCount: listCart.length,
              ),
              SizedBox(
                height: 24.h,
              ),
              Text(
                'Delivery Service',
                style: Theme.of(context).textTheme.headline3,
              ),
              SizedBox(
                height: 18.h,
              ),
              const CardDeliveryMethod(),
              SizedBox(
                height: 24.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total Price',
                    style: Theme.of(context).textTheme.headline3,
                  ),
                  Text(
                    CurrencyConverter.rpFormating(totalPrice + 20000),
                    style: Theme.of(context)
                        .textTheme
                        .headline3!
                        .copyWith(color: Colors.black),
                  ),
                ],
              ),
              SizedBox(
                height: 24.h,
              ),
              CustomButton(
                onPressed: () {
                  context.navigateTo(PaymentRoute(listCartEntity: listCart));
                },
                child: Text(
                  'Choose Payment Method',
                  style: Theme.of(context)
                      .textTheme
                      .headline3!
                      .copyWith(color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

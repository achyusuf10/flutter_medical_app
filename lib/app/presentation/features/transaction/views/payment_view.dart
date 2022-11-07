import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_widget_package/helper/no_scroll_glow_behavior.dart';
import 'package:my_widget_package/widgets/custom_button.dart';

import '../widgets/card_payment_method.dart';

class PaymentView extends HookWidget {
  const PaymentView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Payment Method',
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
                'Payment Method',
                style: Theme.of(context).textTheme.headline3,
              ),
              SizedBox(
                height: 18.h,
              ),
              HookBuilder(builder: (context) {
                final groupValue = useState('Indomaret');
                void onChange(String? value) {
                  groupValue.value = value ?? '';
                }

                return Column(
                  children: [
                    CardPaymentMethod(
                      groupValue: groupValue.value,
                      value: 'Indomaret',
                      urlImage:
                          'https://upload.wikimedia.org/wikipedia/commons/9/9d/Logo_Indomaret.png',
                      onChanged: onChange,
                    ),
                    CardPaymentMethod(
                      groupValue: groupValue.value,
                      value: 'BSI',
                      urlImage:
                          'https://upload.wikimedia.org/wikipedia/commons/6/69/Bank_Syariah_Indonesia.jpg',
                      onChanged: onChange,
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    CustomButton(
                      onPressed: () {},
                      child: Text(
                        'Confirm',
                        style: Theme.of(context)
                            .textTheme
                            .headline3!
                            .copyWith(color: Colors.white),
                      ),
                    )
                  ],
                );
              })
            ],
          ),
        ),
      ),
    );
  }
}

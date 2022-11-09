import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_app/app/domain/entity/cart/cart_entity.dart';
import 'package:medical_app/app/presentation/features/transaction/bloc/payment_bloc.dart';
import 'package:medical_app/core/utils/ui_utils.dart';
import 'package:medical_app/routes/app_route.gr.dart';
import 'package:my_widget_package/data/enum.dart';
import 'package:my_widget_package/helper/no_scroll_glow_behavior.dart';
import 'package:my_widget_package/widgets/custom_button.dart';

import '../widgets/card_payment_method.dart';

class PaymentView extends HookWidget {
  final List<CartEntity> listCartEntity;
  const PaymentView(this.listCartEntity, {super.key});
  @override
  Widget build(BuildContext context) {
    final groupVN = useValueNotifier('Indomaret');
    void onChange(String? value) {
      groupVN.value = value ?? '';
    }

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
      body: BlocListener<PaymentBloc, PaymentState>(
        listener: (context, state) {
          state.mapOrNull(
            loading: (value) => UiUtils.showCircularLoading(context),
            success: (value) {
              Navigator.pop(context);
              UiUtils.showDialogNotif(
                  context: context,
                  message: value.success.message,
                  notifType: NotifType.success);
              context.router
                  .popUntilRouteWithName(const MainScreenRoute().routeName);
            },
            failed: (value) {
              Navigator.pop(context);
              UiUtils.showDialogNotif(
                  context: context,
                  message: value.failure.message,
                  notifType: NotifType.failed);
            },
          );
        },
        child: ScrollConfiguration(
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
                  final groupValue = useValueListenable(groupVN);
                  return Column(
                    children: [
                      CardPaymentMethod(
                        groupValue: groupValue,
                        value: 'Indomaret',
                        urlImage:
                            'https://upload.wikimedia.org/wikipedia/commons/9/9d/Logo_Indomaret.png',
                        onChanged: onChange,
                      ),
                      CardPaymentMethod(
                        groupValue: groupValue,
                        value: 'BSI',
                        urlImage:
                            'https://upload.wikimedia.org/wikipedia/commons/6/69/Bank_Syariah_Indonesia.jpg',
                        onChanged: onChange,
                      ),
                    ],
                  );
                }),
                SizedBox(
                  height: 24.h,
                ),
                CustomButton(
                  onPressed: () {
                    context.read<PaymentBloc>().add(PaymentEvent.addTransaction(
                        paymentMethod: groupVN.value,
                        listCartEntity: listCartEntity));
                  },
                  child: Text(
                    'Confirm',
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
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_app/app/domain/entity/cart/cart_entity.dart';
import 'package:medical_app/app/presentation/features/cart/bloc/cart_bloc.dart';
import 'package:medical_app/core/helper/converter/currency_converter.dart';

import '../../../../widgets/custom_box_image.dart';
import '../widgets/counter_widget.dart';

class CardProductCart extends StatelessWidget {
  final CartEntity cartEntity;

  const CardProductCart({
    Key? key,
    required this.cartEntity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(0, 12, 18, 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 3,
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Checkbox(
            value: true,
            onChanged: (value) {},
          ),
          CustomBoxImage(
            onTap: () {},
            width: 100.w,
            aspectRatio: 1 / 1.2,
            urlImage: '',
          ),
          const SizedBox(
            width: 20,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  cartEntity.productEntity?.name ?? '',
                  style: Theme.of(context)
                      .textTheme
                      .headline1!
                      .copyWith(color: Colors.black, fontSize: 16.sp),
                ),
                Text(
                  cartEntity.productEntity?.shortDesc ?? '',
                  style: Theme.of(context).textTheme.bodyText2!.copyWith(
                        color: Colors.black,
                      ),
                ),
                SizedBox(
                  height: 5.w,
                ),
                Text(
                  CurrencyConverter.rpFormating(
                      cartEntity.productEntity?.price ?? 0),
                  style: Theme.of(context)
                      .textTheme
                      .headline2!
                      .copyWith(fontSize: 16.sp),
                ),
                SizedBox(
                  height: 10.h,
                ),
                CounterWidget(
                  onAdd: () {
                    context
                        .read<CartBloc>()
                        .add(CartEvent.addQuantity(cartEntity: cartEntity));
                  },
                  onDelete: () {
                    context
                        .read<CartBloc>()
                        .add(CartEvent.deleteCart(cartEntity: cartEntity));
                  },
                  onSubtract: () {
                    context.read<CartBloc>().add(
                        CartEvent.subtractQuantity(cartEntity: cartEntity));
                  },
                  quantity: cartEntity.quantity,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

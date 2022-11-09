import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:medical_app/app/presentation/features/transaction/bloc/history_transaction_bloc.dart';
import 'package:medical_app/core/helper/converter/currency_converter.dart';
import 'package:my_widget_package/widgets/custom_button.dart';
import 'package:my_widget_package/widgets/custom_text_form_field.dart';

import '../../../../domain/entity/cart/cart_entity.dart';
import '../../../../domain/entity/transaction/transaction_entity.dart';
import '../../../../widgets/custom_box_image.dart';

class CardProductHistoryTransaction extends StatelessWidget {
  final TransactionEntity transactionEntity;
  const CardProductHistoryTransaction({
    super.key,
    required this.transactionEntity,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            DateFormat('EEE, d/M/y')
                .format(DateTime.parse(transactionEntity.time)),
            style: Theme.of(context)
                .textTheme
                .headline4!
                .copyWith(color: Colors.black),
          ),
          SizedBox(
            height: 12.h,
          ),
          ListView.separated(
            itemBuilder: (context, index) => ProductHistoryTransaction(
              cartEntity: transactionEntity.listCartEntity[index],
            ),
            separatorBuilder: (context, index) => const Divider(),
            itemCount: transactionEntity.listCartEntity.length,
            shrinkWrap: true,
            primary: false,
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
            'Total ${CurrencyConverter.rpFormating(int.parse(transactionEntity.totalPrice))}',
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(fontSize: 16.sp),
          ),
        ],
      ),
    );
  }
}

class ProductHistoryTransaction extends StatelessWidget {
  final CartEntity cartEntity;
  const ProductHistoryTransaction({
    Key? key,
    required this.cartEntity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
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
                cartEntity.productEntity!.name,
                style: Theme.of(context)
                    .textTheme
                    .headline1!
                    .copyWith(color: Colors.black, fontSize: 16.sp),
              ),
              Text(
                cartEntity.productEntity!.shortDesc,
                style: Theme.of(context).textTheme.bodyText2!.copyWith(
                      color: Colors.black,
                    ),
              ),
              SizedBox(
                height: 20.w,
              ),
              Row(
                children: [
                  Text(
                    CurrencyConverter.rpFormating(
                        cartEntity.productEntity!.price),
                    style: Theme.of(context)
                        .textTheme
                        .headline2!
                        .copyWith(fontSize: 16.sp),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    'x 1',
                    style: Theme.of(context)
                        .textTheme
                        .headline4!
                        .copyWith(fontSize: 14.sp, color: Colors.black54),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.centerRight,
                child: CustomButton(
                  width: 80.w,
                  height: 30.h,
                  onPressed: () {
                    showModalBottomSheet(
                        context: context,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(10),
                          ),
                        ),
                        builder: (context) {
                          return RivewBottomSheet(
                            cartEntity: cartEntity,
                          );
                        });
                  },
                  child: Text(
                    'Leave a Riview',
                    style: Theme.of(context).textTheme.headline2!.copyWith(
                          fontSize: 14.sp,
                          color: Colors.white,
                        ),
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}

class RivewBottomSheet extends HookWidget {
  final CartEntity cartEntity;
  const RivewBottomSheet({
    required this.cartEntity,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final riviewC = useTextEditingController();
    final ratingValue = useState(0.0);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 24.h,
          ),
          Text(
            'Riview',
            style: Theme.of(context).textTheme.headline3,
          ),
          SizedBox(
            height: 18.h,
          ),
          RatingBar.builder(
            initialRating: 0,
            minRating: 0,
            direction: Axis.horizontal,
            allowHalfRating: true,
            itemCount: 5,
            itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
            itemBuilder: (context, _) => const Icon(
              Icons.star,
              color: Colors.amber,
            ),
            onRatingUpdate: (rating) {
              ratingValue.value = rating;
            },
          ),
          SizedBox(
            height: 18.h,
          ),
          const Divider(
            color: Colors.black54,
            height: 2,
          ),
          SizedBox(
            height: 18.h,
          ),
          Text(
            'Tell us about the product you received',
            style: Theme.of(context).textTheme.headline5,
          ),
          SizedBox(
            height: 10.h,
          ),
          CustomTextFormField(
            controller: riviewC,
            hintText: 'Input your review',
            useLabel: false,
          ),
          SizedBox(
            height: 18.h,
          ),
          CustomButton(
            onPressed: () {
              context.read<HistoryTransactionBloc>().add(
                  HistoryTransactionEvent.giveRiview(
                      idProduct: cartEntity.productEntity!.id,
                      riview: riviewC.text,
                      rating: ratingValue.value));
            },
            child: Text(
              'Kirim',
              style: Theme.of(context)
                  .textTheme
                  .headline3!
                  .copyWith(color: Colors.white),
            ),
          ),
          SizedBox(
            height: 18.h,
          ),
        ],
      ),
    );
  }
}

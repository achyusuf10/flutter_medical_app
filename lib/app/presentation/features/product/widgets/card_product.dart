import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_app/app/domain/entity/product/product_entity.dart';
import 'package:medical_app/app/presentation/features/product/bloc/product_bloc.dart';
import 'package:medical_app/app/widgets/custom_box_image.dart';
import 'package:medical_app/core/helper/converter/currency_converter.dart';
import 'package:my_widget_package/my_widget_package.dart';

class CardProduct extends StatelessWidget {
  final ProductEntity productEntity;
  const CardProduct({
    Key? key,
    required this.productEntity,
  }) : super(key: key);

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
      child: Row(
        children: [
          CustomBoxImage(
            onTap: () {},
            width: 100.w,
            aspectRatio: 1 / 1.2,
            urlImage: productEntity.urlPhoto,
          ),
          const SizedBox(
            width: 20,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  productEntity.name,
                  style: Theme.of(context)
                      .textTheme
                      .headline1!
                      .copyWith(color: Colors.black, fontSize: 16.sp),
                ),
                Text(
                  productEntity.shortDesc,
                  style: Theme.of(context).textTheme.bodyText2!.copyWith(
                        color: Colors.black,
                      ),
                ),
                RatingBarIndicator(
                  rating: productEntity.rating,
                  itemBuilder: (context, index) => const Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  itemCount: 5,
                  itemSize: 16.0,
                  direction: Axis.horizontal,
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  CurrencyConverter.rpFormating(productEntity.price),
                  style: Theme.of(context)
                      .textTheme
                      .headline2!
                      .copyWith(fontSize: 16.sp),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: CustomButton(
                    width: 100.w,
                    height: 30.h,
                    onPressed: () {
                      context.read<ProductBloc>().add(
                          ProductEvent.addProductToCart(
                              productEntity: productEntity));
                    },
                    child: Text(
                      'Add To Chart',
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
      ),
    );
  }
}

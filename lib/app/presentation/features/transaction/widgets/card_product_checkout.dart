import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../widgets/custom_box_image.dart';

class CardProductCheckout extends StatelessWidget {
  const CardProductCheckout({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(18, 12, 18, 12),
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
                  'Paracetamol',
                  style: Theme.of(context)
                      .textTheme
                      .headline1!
                      .copyWith(color: Colors.black, fontSize: 16.sp),
                ),
                Text(
                  '500 mg 10 tablet',
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
                      'Rp. 4.100',
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
                          .copyWith(color: Colors.black, fontSize: 14.sp),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

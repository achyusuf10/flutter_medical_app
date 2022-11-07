import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardDeliveryMethod extends StatelessWidget {
  const CardDeliveryMethod({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(color: Theme.of(context).primaryColor),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Nininja Cepat',
                style: Theme.of(context).textTheme.headline3!.copyWith(
                    fontSize: 16.sp, color: Theme.of(context).primaryColor),
              ),
              Text(
                'Rp.20.000',
                style: Theme.of(context).textTheme.headline4!.copyWith(
                      color: Colors.black,
                      fontSize: 14.sp,
                    ),
              ),
            ],
          ),
          const Icon(Icons.chevron_right),
        ],
      ),
    );
  }
}

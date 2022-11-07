import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_app/app/presentation/features/transaction/widgets/card_product_history_transaction.dart';

class TransactionView extends StatelessWidget {
  const TransactionView({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 24.h,
        ),
        Text(
          'History Transaction',
          style: Theme.of(context).textTheme.headline3,
        ),
        SizedBox(
          height: 24.h,
        ),
        ListView.separated(
            shrinkWrap: true,
            primary: false,
            itemBuilder: (context, index) =>
                const CardProductHistoryTransaction(),
            separatorBuilder: (context, index) => const SizedBox(
                  height: 14,
                ),
            itemCount: 5),
        const SizedBox(
          height: 20,
        )
      ],
    );
  }
}

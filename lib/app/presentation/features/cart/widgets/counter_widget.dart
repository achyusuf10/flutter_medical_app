import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CounterWidget extends StatelessWidget {
  final Function()? onAdd;
  final Function()? onSubtract;
  final Function()? onDelete;
  final int quantity;
  const CounterWidget({
    Key? key,
    required this.onAdd,
    required this.onSubtract,
    required this.onDelete,
    required this.quantity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        GestureDetector(
          onTap: onDelete,
          child: const Icon(
            Icons.delete_outline_rounded,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 18,
          ),
          decoration: BoxDecoration(
              border: Border.all(
                color: Theme.of(context).primaryColor,
              ),
              borderRadius: BorderRadius.circular(10)),
          child: Row(
            children: [
              GestureDetector(
                onTap: onSubtract,
                child: Text(
                  '-',
                  style: Theme.of(context)
                      .textTheme
                      .headline4!
                      .copyWith(fontSize: 24.sp),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14),
                child: Text(
                  '$quantity',
                  style: Theme.of(context).textTheme.headline4,
                ),
              ),
              GestureDetector(
                onTap: onAdd,
                child: Text(
                  '+',
                  style: Theme.of(context)
                      .textTheme
                      .headline4!
                      .copyWith(fontSize: 24.sp),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}

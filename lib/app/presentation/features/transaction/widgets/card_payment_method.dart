import 'package:flutter/material.dart';
import 'package:medical_app/app/widgets/custom_box_image.dart';

class CardPaymentMethod extends StatelessWidget {
  final String groupValue, value, urlImage;
  final Function(String?)? onChanged;

  const CardPaymentMethod({
    Key? key,
    required this.groupValue,
    required this.value,
    this.onChanged,
    required this.urlImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomBoxImage(
          onTap: () {},
          urlImage: urlImage,
          aspectRatio: 1,
          width: 30,
          boxFit: BoxFit.fitWidth,
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          value,
          style: Theme.of(context)
              .textTheme
              .headline3!
              .copyWith(color: Colors.black),
        ),
        const Spacer(),
        Radio(value: value, groupValue: groupValue, onChanged: onChanged)
      ],
    );
  }
}

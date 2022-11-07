import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:my_widget_package/my_widget_package.dart';

import '../widgets/card_product.dart';

class ProductView extends HookWidget {
  const ProductView({super.key});
  @override
  Widget build(BuildContext context) {
    final searchC = useTextEditingController();
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 18),
          child: CustomTextFormField(
            controller: searchC,
            hintText: 'Type Keyword',
            useLabel: false,
            suffix: const Icon(
              Icons.search_rounded,
            ),
          ),
        ),
        ListView.separated(
            shrinkWrap: true,
            primary: false,
            itemBuilder: (context, index) => const CardProduct(),
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

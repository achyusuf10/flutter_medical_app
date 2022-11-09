import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:my_widget_package/my_widget_package.dart';

import '../bloc/product_bloc.dart';
import '../widgets/card_product.dart';

class ProductView extends HookWidget {
  const ProductView({super.key});
  @override
  Widget build(BuildContext context) {
    final searchC = useTextEditingController();
    useEffect(() {
      context.read<ProductBloc>().add(const ProductEvent.getListProduct());
      return null;
    });
    return BlocBuilder<ProductBloc, ProductState>(
      builder: (context, state) {
        return state.mapOrNull(
              loading: (value) => const CircularLoading(),
              loaded: (value) => Column(
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
                    itemBuilder: (context, index) => CardProduct(
                      productEntity: value.listProduct[index],
                    ),
                    separatorBuilder: (context, index) => const SizedBox(
                      height: 14,
                    ),
                    itemCount: value.listProduct.length,
                  ),
                  const SizedBox(
                    height: 20,
                  )
                ],
              ),
            ) ??
            const SizedBox();
      },
    );
  }
}

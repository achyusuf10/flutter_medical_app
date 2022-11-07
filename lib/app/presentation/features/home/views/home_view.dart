import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:medical_app/app/widgets/custom_box_image.dart';
import 'package:my_widget_package/my_widget_package.dart';

import '../widgets/card_doctor_home.dart';

class HomeView extends HookWidget {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    final searchC = useTextEditingController();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
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
        CustomBoxImage(
          onTap: () {},
          urlImage:
              'https://images.unsplash.com/photo-1612349317150-e413f6a5b16d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
        ),
        const SizedBox(
          height: 24,
        ),
        Text(
          'Services',
          style: Theme.of(context)
              .textTheme
              .headline3!
              .copyWith(color: Colors.black),
        ),
        const SizedBox(
          height: 12,
        ),
        GridView.builder(
          shrinkWrap: true,
          primary: false,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            crossAxisSpacing: 10,
            childAspectRatio: 1 / 1.3,
          ),
          itemCount: 4,
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Theme.of(context).primaryColor,
                  ],
                ),
              ),
            );
          },
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Specialist Doctors',
              style: Theme.of(context)
                  .textTheme
                  .headline3!
                  .copyWith(color: Colors.black),
            ),
            Text(
              'See All',
              style: Theme.of(context)
                  .textTheme
                  .bodyText2!
                  .copyWith(color: Colors.black45),
            ),
          ],
        ),
        const SizedBox(
          height: 12,
        ),
        ListView.separated(
          shrinkWrap: true,
          primary: false,
          itemCount: 3,
          itemBuilder: (context, index) => const CardDoctorHome(),
          separatorBuilder: (context, index) => const SizedBox(
            height: 14,
          ),
        ),
        const SizedBox(height: 12),
      ],
    );
  }
}

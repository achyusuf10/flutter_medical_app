import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_widget_package/my_widget_package.dart';

import '../components/form_login.dart';

class LoginView extends HookWidget {
  const LoginView({super.key});
  @override
  Widget build(BuildContext context) {
    final emailC = useTextEditingController(text: "test@gmail.com");
    final passwordC = useTextEditingController(text: "123test");
    final formKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(),
      body: ScrollConfiguration(
        behavior: NoScrollGlowBehavior(),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(left: 24),
                width: double.infinity,
                height: 295.h - kToolbarHeight,
                color: Theme.of(context).primaryColor,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/images/logo.png',
                      width: 200,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Text(
                      'Welcome\nBack',
                      style: Theme.of(context)
                          .textTheme
                          .headline1!
                          .copyWith(color: Colors.white),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 42.h,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: FormLogin(
                    formKey: formKey, emailC: emailC, passwordC: passwordC),
              )
            ],
          ),
        ),
      ),
    );
  }
}

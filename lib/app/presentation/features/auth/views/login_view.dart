import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_app/app/presentation/features/main_screen/views/main_screen_view.dart';
import 'package:my_widget_package/my_widget_package.dart';

import '../../../../../routes/app_route.gr.dart';

class LoginView extends HookWidget {
  const LoginView({super.key});
  @override
  Widget build(BuildContext context) {
    final emailC = useTextEditingController();
    final passwordC = useTextEditingController();
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
                child: Form(
                  key: formKey,
                  child: Column(
                    children: [
                      CustomTextFormField(
                        controller: emailC,
                        hintText: 'Masukkan Email Anda',
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      HookBuilder(builder: (context) {
                        final tooglePassword = useState(true);
                        return CustomTextFormField(
                          controller: passwordC,
                          hintText: 'Masukkan Password Anda',
                          obs: tooglePassword.value,
                          suffix: GestureDetector(
                            onTap: () {
                              tooglePassword.value = !tooglePassword.value;
                            },
                            child: Icon(
                              (tooglePassword.value)
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                        );
                      }),
                      SizedBox(
                        height: 24.h,
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: GestureDetector(
                          onTap: () {},
                          child: Text(
                            'Forgot Password',
                            style: Theme.of(context)
                                .textTheme
                                .headline6!
                                .copyWith(color: Colors.black),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50.h,
                      ),
                      CustomButton(
                        onPressed: () {
                          context.router.replace(const MainScreenRoute());
                        },
                        child: Text(
                          'Login',
                          style: Theme.of(context)
                              .textTheme
                              .headline3!
                              .copyWith(color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(),
                        onPressed: () {},
                        child: Text(
                          'Register',
                          style:
                              Theme.of(context).textTheme.headline3!.copyWith(
                                    color: Theme.of(context).primaryColor,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_app/app/presentation/features/auth/bloc/auth_bloc.dart';
import 'package:medical_app/core/utils/ui_utils.dart';
import 'package:medical_app/routes/app_route.gr.dart';
import 'package:my_widget_package/my_widget_package.dart';

class FormLogin extends StatelessWidget {
  const FormLogin({
    Key? key,
    required this.formKey,
    required this.emailC,
    required this.passwordC,
  }) : super(key: key);

  final GlobalKey<FormState> formKey;
  final TextEditingController emailC;
  final TextEditingController passwordC;

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.mapOrNull(
            loading: (value) => UiUtils.showCircularLoading(context),
            success: (value) {
              Navigator.pop(context);
              UiUtils.showDialogNotif(
                  context: context,
                  message: value.success.message,
                  notifType: NotifType.success);
              context.router.replace(const MainScreenRoute());
            },
            failed: (value) {
              Navigator.pop(context);
              UiUtils.showDialogNotif(
                  context: context,
                  message: value.failure.message,
                  notifType: NotifType.failed);
            });
      },
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
                if (!formKey.currentState!.validate()) return;
                context.read<AuthBloc>().add(AuthEvent.login(
                    email: emailC.text, password: passwordC.text));
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
                style: Theme.of(context).textTheme.headline3!.copyWith(
                      color: Theme.of(context).primaryColor,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

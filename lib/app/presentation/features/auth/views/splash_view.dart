import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:medical_app/routes/app_route.gr.dart';
import 'package:my_widget_package/widgets/circular_loading.dart';

class SplashView extends HookWidget {
  const SplashView({super.key});
  @override
  Widget build(BuildContext context) {
    useEffect(() {
      context.router.replace(const LoginRoute());
      return null;
    });
    return const Scaffold(
      body: Center(
        child: CircularLoading(
          diameter: 40,
        ),
      ),
    );
  }
}

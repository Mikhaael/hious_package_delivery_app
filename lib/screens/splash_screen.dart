import 'package:flutter/material.dart';
import 'package:hious_package_delivery_app/utils/designs/assets.dart';
import 'package:hious_package_delivery_app/utils/designs/routes.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    Future.delayed(
      const Duration(seconds: 10),
      () => Navigator.pushReplacementNamed(
        context,
        Routes.welcome,
      ),
    );
    return Scaffold(
      backgroundColor: theme.colorScheme.primary,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Image(
              image: AssetImage(Assets.hiousLogo),
            ),
          ],
        ),
      ),
    );
  }
}

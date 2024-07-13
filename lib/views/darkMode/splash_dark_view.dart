import 'package:flutter/material.dart';
import 'package:islami_app/views/darkMode/home_dark_view.dart';

class SplashDarkView extends StatefulWidget {
  const SplashDarkView({super.key});
  static const String id = 'SplashDarkView';

  @override
  State<SplashDarkView> createState() => _SplashDarkViewState();
}

class _SplashDarkViewState extends State<SplashDarkView> {
  @override
  void initState() {
    super.initState();

    Future.delayed(
        const Duration(
          seconds: 4,
        ), () {
      Navigator.pushReplacementNamed(context, HomeDarkView.id);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/images/bg_splash_dark.png',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              Image.asset(
                'assets/images/splash.png',
                height: 262,
                width: 262,
                fit: BoxFit.cover,
              ),
              const Spacer(),
              Image.asset(
                'assets/images/routegold.png',
                height: 139,
                width: 139,
                fit: BoxFit.cover,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:islami_app/views/lightMode/home_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});
  static const String id = 'SplashView';

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();

    Future.delayed(
        const Duration(
          seconds: 4,
        ), () {
      Navigator.pushReplacementNamed(context, HomeView.id);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
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
    );
  }
}

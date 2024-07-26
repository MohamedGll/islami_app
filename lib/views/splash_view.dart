import 'package:flutter/material.dart';
import 'package:islami_app/providers/theme_provider.dart';
import 'package:islami_app/views/home_view.dart';
import 'package:provider/provider.dart';

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
    var themeProvider = Provider.of<ThemeProvider>(context);

    return Stack(
      children: [
        Image.asset(
          themeProvider.appTheme == ThemeMode.dark
              ? 'assets/images/bg_splash_dark.png'
              : 'assets/images/bg2.png',
        ),
        Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // const Spacer(),
                Image.asset(
                  themeProvider.appTheme == ThemeMode.dark
                      ? 'assets/images/logo.png'
                      : 'assets/images/logo2.png',
                  height: 262,
                  width: 262,
                  fit: BoxFit.cover,
                ),
                // const Spacer(),
                // Image.asset(
                //   themeProvider.appTheme == ThemeMode.dark
                //       ? 'assets/images/routeyellow.png'
                //       : 'assets/images/routegold.png',
                //   height: 139,
                //   width: 139,
                //   fit: BoxFit.cover,
                // ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

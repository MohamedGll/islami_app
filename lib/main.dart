import 'package:flutter/material.dart';
import 'package:islami_app/my_theme_data.dart';
import 'package:islami_app/views/hadeth_details_view.dart';
import 'package:islami_app/views/splash_view.dart';
import 'package:islami_app/views/home_view.dart';
import 'package:islami_app/views/sura_details_view.dart';

void main() {
  runApp(const IslamiApp());
}

class IslamiApp extends StatelessWidget {
  const IslamiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      debugShowCheckedModeBanner: false,
      initialRoute: SplashView.id,
      routes: {
        SplashView.id: (context) => const SplashView(),
        HomeView.id: (context) => const HomeView(),
        SuraDetailsView.id: (context) => const SuraDetailsView(),
        HadethDetailsView.id: (context) => const HadethDetailsView(),
      },
    );
  }
}

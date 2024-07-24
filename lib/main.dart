import 'package:flutter/material.dart';
import 'package:islami_app/views/lightMode/hadeth_details_view.dart';
import 'package:islami_app/views/lightMode/splash_view.dart';
import 'package:islami_app/views/lightMode/home_view.dart';
import 'package:islami_app/views/lightMode/sura_details_view.dart';

void main() {
  runApp(const IslamiApp());
}

class IslamiApp extends StatelessWidget {
  const IslamiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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

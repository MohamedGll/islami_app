import 'package:flutter/material.dart';
import 'package:islami_app/views/ahades_view.dart';
import 'package:islami_app/views/home_view.dart';
import 'package:islami_app/views/quran_view.dart';
import 'package:islami_app/views/radio_view.dart';
import 'package:islami_app/views/sebha_view.dart';
import 'package:islami_app/views/setting_view.dart';
import 'package:islami_app/views/splash_view.dart';

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
        SebhaView.id: (context) => const SebhaView(),
        AhadesView.id: (context) => const AhadesView(),
        QuranView.id: (context) => const QuranView(),
        RadioView.id: (context) => const RadioView(),
        HomeView.id: (context) => const HomeView(),
        SettingView.id: (context) => const SettingView(),
      },
    );
  }
}

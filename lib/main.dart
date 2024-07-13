import 'package:flutter/material.dart';
// import 'package:islami_app/views/darkMode/ahades_dark_view.dart';
// import 'package:islami_app/views/darkMode/home_dark_view.dart';
// import 'package:islami_app/views/darkMode/quran_view.dart';
// import 'package:islami_app/views/darkMode/radio_dark_view.dart';
// import 'package:islami_app/views/darkMode/sebha_dark_view.dart';
// import 'package:islami_app/views/darkMode/settings_dark_view.dart';
// import 'package:islami_app/views/darkMode/splash_dark_view.dart';
// import 'package:islami_app/views/darkMode/sura_details_dark_view.dart';
import 'package:islami_app/views/lightMode/splash_view.dart';
import 'package:islami_app/views/lightMode/ahades_view.dart';
import 'package:islami_app/views/lightMode/home_view.dart';
import 'package:islami_app/views/lightMode/quran_view.dart';
import 'package:islami_app/views/lightMode/radio_view.dart';
import 'package:islami_app/views/lightMode/sebha_view.dart';
import 'package:islami_app/views/lightMode/settings_view.dart';
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
        SebhaView.id: (context) => const SebhaView(),
        AhadesView.id: (context) => const AhadesView(),
        QuranView.id: (context) => const QuranView(),
        RadioView.id: (context) => const RadioView(),
        HomeView.id: (context) => const HomeView(),
        SettingsView.id: (context) => const SettingsView(),
        SuraDetailsView.id: (context) => const SuraDetailsView(),
        // SplashDarkView.id: (context) => const SplashDarkView(),
        // SebhaDarkView.id: (context) => const SebhaDarkView(),
        // AhadesDarkView.id: (context) => const AhadesDarkView(),
        // QuranDarkView.id: (context) => const QuranDarkView(),
        // RadioDarkView.id: (context) => const RadioDarkView(),
        // HomeDarkView.id: (context) => const HomeDarkView(),
        // SettingsDarkView.id: (context) => const SettingsDarkView(),
        // SuraDetailsDarkView.id: (context) => const SuraDetailsDarkView(),
      },
    );
  }
}

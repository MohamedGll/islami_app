import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/my_theme_data.dart';
import 'package:islami_app/providers/theme_provider.dart';
import 'package:islami_app/views/hadeth_details_view.dart';
import 'package:islami_app/views/splash_view.dart';
import 'package:islami_app/views/home_view.dart';
import 'package:islami_app/views/sura_details_view.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: EasyLocalization(
        supportedLocales: const [Locale('en'), Locale('ar')],
        path: 'assets/translations',
        startLocale: const Locale('en'),
        saveLocale: true,
        child: const IslamiApp(),
      ),
    ),
  );
}

class IslamiApp extends StatelessWidget {
  const IslamiApp({super.key});

  @override
  Widget build(BuildContext context) {
    var themeProvider = Provider.of<ThemeProvider>(context);
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      themeMode: themeProvider.appTheme,
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      debugShowCheckedModeBanner: false,
      initialRoute: HomeView.id,
      routes: {
        SplashView.id: (context) => const SplashView(),
        HomeView.id: (context) => const HomeView(),
        SuraDetailsView.id: (context) => const SuraDetailsView(),
        HadethDetailsView.id: (context) => const HadethDetailsView(),
      },
    );
  }
}

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/providers/theme_provider.dart';
import 'package:islami_app/views/ahades_view.dart';
import 'package:islami_app/views/quran_view.dart';
import 'package:islami_app/views/radio_view.dart';
import 'package:islami_app/views/sebha_view.dart';
import 'package:islami_app/views/settings_view.dart';
import 'package:provider/provider.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});
  static const String id = 'HomeView';

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int currentIndex = 0;
  List<Widget> views = [
    const QuranView(),
    const RadioView(),
    const SebhaView(),
    const AhadesView(),
    const SettingsView(),
  ];
  @override
  Widget build(BuildContext context) {
    var themeProvider = Provider.of<ThemeProvider>(context);
    return Stack(
      children: [
        Image(
          image: AssetImage(
            themeProvider.appTheme == ThemeMode.dark
                ? 'assets/images/dark_bg.png'
                : 'assets/images/default_bg.png',
          ),
        ),
        Scaffold(
          appBar: AppBar(
            title: Text(
              'islami'.tr(),
            ),
          ),
          body: views.elementAt(currentIndex),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: currentIndex,
            onTap: (index) {
              setState(() {
                currentIndex = index;
              });
            },
            items: const [
              BottomNavigationBarItem(
                icon: ImageIcon(
                  size: 38,
                  AssetImage(
                    'assets/images/icon_quran.png',
                  ),
                ),
                label: 'Quran',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  size: 32,
                  AssetImage(
                    'assets/images/icon_radio.png',
                  ),
                ),
                label: 'Radio',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  size: 32,
                  AssetImage(
                    'assets/images/icon_sebha.png',
                  ),
                ),
                label: 'Sebha',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  size: 32,
                  AssetImage(
                    'assets/images/icon_hadeth.png',
                  ),
                ),
                label: 'Ahadeth',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.settings,
                  size: 32,
                ),
                label: 'Settings',
              ),
            ],
          ),
        ),
      ],
    );
  }
}

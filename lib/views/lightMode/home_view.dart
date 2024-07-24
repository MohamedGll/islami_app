import 'package:flutter/material.dart';
import 'package:islami_app/views/lightMode/ahades_view.dart';
import 'package:islami_app/views/lightMode/quran_view.dart';
import 'package:islami_app/views/lightMode/radio_view.dart';
import 'package:islami_app/views/lightMode/sebha_view.dart';
import 'package:islami_app/views/lightMode/settings_view.dart';

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
    return Stack(
      children: [
        const Image(
          image: AssetImage(
            'assets/images/default_bg.png',
          ),
        ),
        Scaffold(
          appBar: AppBar(
            title: const Text(
              'إسلامي',
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
                label: 'القرآن',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  size: 32,
                  AssetImage(
                    'assets/images/icon_radio.png',
                  ),
                ),
                label: 'الراديو',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  size: 32,
                  AssetImage(
                    'assets/images/icon_sebha.png',
                  ),
                ),
                label: 'التسبيح',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  size: 32,
                  AssetImage(
                    'assets/images/icon_hadeth.png',
                  ),
                ),
                label: 'الأحاديث',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.settings,
                  size: 32,
                ),
                label: 'الاعدادات',
              ),
            ],
          ),
        ),
      ],
    );
  }
}

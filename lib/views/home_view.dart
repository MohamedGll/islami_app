import 'package:flutter/material.dart';
import 'package:islami_app/views/ahades_view.dart';
import 'package:islami_app/views/quran_view.dart';
import 'package:islami_app/views/radio_view.dart';
import 'package:islami_app/views/sebha_view.dart';
import 'package:islami_app/views/setting_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});
  static const String id = 'HomeView';

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int currentIndex = 0;
  List<Widget> views = [
    const RadioView(),
    const SebhaView(),
    const AhadesView(),
    const QuranView(),
    const SettingView(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: views.elementAt(currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 12,
        iconSize: 10,
        showUnselectedLabels: false,
        selectedItemColor: Colors.black,
        backgroundColor: const Color(0xffB7935F),
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/icon_radio.png',
              width: 31,
              height: 29,
            ),
            label: 'الراديو',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/icon_sebha.png',
              width: 42,
              height: 40,
            ),
            label: 'التسبيح',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/icon_hadeth.png',
              width: 27.12,
              height: 22.6,
            ),
            label: 'الأحاديث',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/icon_quran.png',
              width: 42,
              height: 40,
            ),
            label: 'القرآن',
          ),
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              size: 28,
              color: Colors.white,
            ),
            label: 'الاعدادات',
          ),
        ],
      ),
    );
  }
}

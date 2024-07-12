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
        type: BottomNavigationBarType.fixed,
        iconSize: 10,
        showUnselectedLabels: false,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
        backgroundColor: const Color(0xffB7935F),
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: const [
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
            icon: ImageIcon(
              size: 38,
              AssetImage(
                'assets/images/icon_quran.png',
              ),
            ),
            label: 'القرآن',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              size: 32,
              color: Colors.white,
            ),
            label: 'الاعدادات',
          ),
        ],
      ),
    );
  }
}

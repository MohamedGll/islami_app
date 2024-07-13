import 'package:flutter/material.dart';
import 'package:islami_app/constant.dart';
import 'package:islami_app/views/darkMode/ahades_dark_view.dart';
import 'package:islami_app/views/darkMode/quran_view.dart';
import 'package:islami_app/views/darkMode/radio_dark_view.dart';
import 'package:islami_app/views/darkMode/sebha_dark_view.dart';
import 'package:islami_app/views/darkMode/settings_dark_view.dart';

class HomeDarkView extends StatefulWidget {
  const HomeDarkView({super.key});
  static const String id = 'HomeDarkView';

  @override
  State<HomeDarkView> createState() => _HomeDarkViewState();
}

class _HomeDarkViewState extends State<HomeDarkView> {
  int currentIndex = 0;
  List<Widget> views = [
    const SettingsDarkView(),
    const RadioDarkView(),
    const SebhaDarkView(),
    const AhadesDarkView(),
    const QuranDarkView(),
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
        selectedItemColor: kPrimaryColorDark,
        unselectedItemColor: Colors.white,
        backgroundColor: const Color(0xff141A2E),
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              size: 32,
              color: Colors.white,
            ),
            label: 'الاعدادات',
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
            icon: ImageIcon(
              size: 38,
              AssetImage(
                'assets/images/icon_quran.png',
              ),
            ),
            label: 'القرآن',
          ),
        ],
      ),
    );
  }
}

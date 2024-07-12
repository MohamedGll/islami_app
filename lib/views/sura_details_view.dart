import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:islami_app/constant.dart';

class SuraDetailsView extends StatelessWidget {
  const SuraDetailsView({super.key});
  static const String id = 'SuraView';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/images/default_bg.png',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 26,
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back),
                ),
                const SizedBox(
                  width: 83,
                ),
                const Text(
                  'إسلامي',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontFamily: 'El Messiri',
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 29, right: 29, top: 28),
              child: Container(
                width: 354,
                height: 600,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: const Column(
                  children: [
                    SizedBox(
                      height: 32,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 12),
                          child: Text(
                            'سورة البقرة',
                            style: TextStyle(
                              fontSize: 25,
                            ),
                          ),
                        ),
                        FaIcon(
                          Icons.play_circle,
                          size: 27,
                        ),
                      ],
                    ),
                    Divider(
                      color: kPrimaryColor,
                      endIndent: 70,
                      indent: 70,
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    Text(
                      '''
بِسْمِ اللَّهِ الرَّحْمَنِ الرَّحِيمِ 
الْحَمْدُ لِلَّهِ رَبِّ الْعَالَمِينَ
 الرَّحْمَنِ الرَّحِيمِ
 مَالِكِ يَوْمِ الدِّينِ
 إِيَّاكَ نَعْبُدُ وَإِيَّاكَ نَسْتَعِينُ
 اهْدِنَا الصِّرَاطَ الْمُسْتَقِيمَ
 صِرَاطَ الَّذِينَ أَنْعَمْتَ عَلَيْهِمْ غَيْرِ الْمَغْضُوبِ عَلَيْهِمْ وَلَا الضَّالِّين

''',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<String> getFileData(String index) async {
    return await rootBundle.loadString(index);
  }
}

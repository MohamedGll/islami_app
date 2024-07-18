import 'package:flutter/material.dart';
import 'package:islami_app/constant.dart';
import 'package:islami_app/models/sura_model.dart';
import 'package:islami_app/views/lightMode/sura_details_view.dart';

class Quran$View extends StatelessWidget {
  const Quran$View({super.key});
  static const String id = 'QuranView';
  final List<String> surasList = const [
    "الفاتحه",
    "البقرة",
    "آل عمران",
    "النساء",
    "المائدة",
    "الأنعام",
    "الأعراف",
    "الأنفال",
    "التوبة",
    "يونس",
    "هود",
    "يوسف",
    "الرعد",
    "إبراهيم",
    "الحجر",
    "النحل",
    "الإسراء",
    "الكهف",
    "مريم",
    "طه",
    "الأنبياء",
    "الحج",
    "المؤمنون",
    "النّور",
    "الفرقان",
    "الشعراء",
    "النّمل",
    "القصص",
    "العنكبوت",
    "الرّوم",
    "لقمان",
    "السجدة",
    "الأحزاب",
    "سبأ",
    "فاطر",
    "يس",
    "الصافات",
    "ص",
    "الزمر",
    "غافر",
    "فصّلت",
    "الشورى",
    "الزخرف",
    "الدّخان",
    "الجاثية",
    "الأحقاف",
    "محمد",
    "الفتح",
    "الحجرات",
    "ق",
    "الذاريات",
    "الطور",
    "النجم",
    "القمر",
    "الرحمن",
    "الواقعة",
    "الحديد",
    "المجادلة",
    "الحشر",
    "الممتحنة",
    "الصف",
    "الجمعة",
    "المنافقون",
    "التغابن",
    "الطلاق",
    "التحريم",
    "الملك",
    "القلم",
    "الحاقة",
    "المعارج",
    "نوح",
    "الجن",
    "المزّمّل",
    "المدّثر",
    "القيامة",
    "الإنسان",
    "المرسلات",
    "النبأ",
    "النازعات",
    "عبس",
    "التكوير",
    "الإنفطار",
    "المطفّفين",
    "الإنشقاق",
    "البروج",
    "الطارق",
    "الأعلى",
    "الغاشية",
    "الفجر",
    "البلد",
    "الشمس",
    "الليل",
    "الضحى",
    "الشرح",
    "التين",
    "العلق",
    "القدر",
    "البينة",
    "الزلزلة",
    "العاديات",
    "القارعة",
    "التكاثر",
    "العصر",
    "الهمزة",
    "الفيل",
    "قريش",
    "الماعون",
    "الكوثر",
    "الكافرون",
    "النصر",
    "المسد",
    "الإخلاص",
    "الفلق",
    "الناس",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                height: 2,
              ),
              const Text(
                'إسلامي',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontFamily: 'El Messiri',
                ),
              ),
              Image.asset(
                'assets/images/qur2an_screen_logo.png',
                width: 205,
                height: 227,
              ),
              Expanded(
                child: IntrinsicHeight(
                  child: Stack(
                    children: [
                      const Column(
                        children: [
                          Divider(
                            thickness: 3,
                            color: kPrimaryColorLight,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                'عدد الآيات',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 25,
                                  fontFamily: 'El Messiri',
                                ),
                              ),
                              Text(
                                'اسم السورة',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 25,
                                  fontFamily: 'El Messiri',
                                ),
                              ),
                            ],
                          ),
                          Divider(
                            thickness: 3,
                            color: kPrimaryColorLight,
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(top: 77, bottom: 16),
                              child: ListView.builder(
                                itemBuilder: (context, index) {
                                  return const Padding(
                                    padding: EdgeInsets.symmetric(vertical: 6),
                                    child: Text(
                                      '286',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 25,
                                      ),
                                    ),
                                  );
                                },
                                itemCount: 20,
                              ),
                            ),
                          ),
                          const VerticalDivider(
                            color: kPrimaryColorLight,
                            indent: 7,
                            thickness: 3,
                          ),
                          Expanded(
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(top: 77, bottom: 16),
                              child: ListView.builder(
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 6),
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.pushNamed(
                                          context,
                                          SuraDetailsView.id,
                                          arguments: SuraModel(
                                              surasList[index], index),
                                        );
                                      },
                                      child: Text(
                                        surasList[index],
                                        textAlign: TextAlign.center,
                                        style: const TextStyle(
                                          fontSize: 25,
                                        ),
                                      ),
                                    ),
                                  );
                                },
                                itemCount: surasList.length,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

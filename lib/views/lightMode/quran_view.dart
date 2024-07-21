import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/constant.dart';
import 'package:islami_app/models/sura_model.dart';
import 'package:islami_app/views/lightMode/sura_details_view.dart';

class QuranView extends StatefulWidget {
  const QuranView({super.key});
  static const String id = 'QuranView';

  @override
  State<QuranView> createState() => _QuranViewState();
}

class _QuranViewState extends State<QuranView> {
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
  void initState() {
    super.initState();
    if (ayaCount.isEmpty) {
      loadSuraFile();
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(
          'assets/images/qur2an_screen_logo.png',
          width: 205,
          height: 227,
        ),
        Expanded(
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
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'اسم السورة',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontFamily: 'El Messiri',
                          fontWeight: FontWeight.w600,
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
              Padding(
                padding: const EdgeInsets.only(top: 77, bottom: 16),
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 6),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(
                            context,
                            SuraDetailsView.id,
                            arguments: SuraModel(surasList[index], index),
                          );
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 55),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '${ayaCount[index]}',
                                style: const TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                surasList[index],
                                style: const TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'El Messiri',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                  itemCount: surasList.length,
                ),
              ),
              const Center(
                child: VerticalDivider(
                  color: kPrimaryColorLight,
                  indent: 7,
                  thickness: 3,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }

  List<int> ayaCount = [];

  loadSuraFile() async {
    for (int i = 0; i < surasList.length; i++) {
      String sura = await rootBundle.loadString('assets/files/${i + 1}.txt');

      List<String> suraLines = sura.trim().split('\n');
      ayaCount.add(suraLines.length);
    }
    setState(() {});
  }
}

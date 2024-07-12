import 'package:flutter/material.dart';
import 'package:islami_app/constant.dart';
import 'package:islami_app/views/sura_view.dart';

class QuranView extends StatelessWidget {
  const QuranView({super.key});
  static const String id = 'QuranView';

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
                            color: kPrimaryColor,
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
                            color: kPrimaryColor,
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
                            color: kPrimaryColor,
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
                                            context, SuraView.id);
                                      },
                                      child: const Text(
                                        'البقرة',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 25,
                                        ),
                                      ),
                                    ),
                                  );
                                },
                                itemCount: 20,
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

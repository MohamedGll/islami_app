import 'package:flutter/material.dart';

class SebhaView extends StatefulWidget {
  const SebhaView({super.key});
  static const String id = 'SebhaView';

  @override
  State<SebhaView> createState() => _SebhaViewState();
}

class _SebhaViewState extends State<SebhaView> {
  int counter = 0;
  int index = 0;
  String label = 'سبحان الله';
  List<String> tasabeh = [
    'الحمد لله',
    'لا إله إلا الله',
    'الله اكبر',
  ];

  double rotation = 0;

  void rotateImage() {
    setState(() {
      rotation += 0.1; // Rotate 90 degrees
    });
  }

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
              const SizedBox(
                height: 90,
              ),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  GestureDetector(
                    onTap: () {
                      if (counter < 32) {
                        rotateImage();
                        counter++;
                        setState(() {});
                      } else if (index < tasabeh.length) {
                        counter = 0;
                        label = tasabeh[index];
                        index++;
                        setState(() {});
                      } else {
                        label = 'سبحان الله';
                        counter = 0;
                        index = 0;
                        setState(() {});
                      }
                    },
                    child: Transform.rotate(
                      angle: rotation,
                      child: Image.asset(
                        'assets/images/body_sebha_logo.png',
                        width: 232,
                        height: 234,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 100,
                    bottom: 207,
                    child: Image.asset(
                      'assets/images/head_sebha_logo.png',
                      width: 73,
                      height: 105,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 28,
              ),
              const Text(
                'عدد التسبيحات',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontFamily: 'El Messiri',
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Container(
                width: 69,
                height: 81,
                decoration: BoxDecoration(
                  color: const Color(0xffC9B496),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Center(
                  child: Text(
                    '$counter',
                    style: const TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: 137,
                height: 51,
                decoration: BoxDecoration(
                  color: const Color(0xffB7935F),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Center(
                  child: Text(
                    label,
                    style: const TextStyle(
                      fontSize: 25,
                      fontFamily: 'El Messiri',
                    ),
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

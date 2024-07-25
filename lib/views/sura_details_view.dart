import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:islami_app/models/sura_model.dart';

class SuraDetailsView extends StatefulWidget {
  const SuraDetailsView({super.key});
  static const String id = 'SuraDetailsView';

  @override
  State<SuraDetailsView> createState() => _SuraDetailsViewState();
}

class _SuraDetailsViewState extends State<SuraDetailsView> {
  List<String> verses = [];
  @override
  Widget build(BuildContext context) {
    var model = ModalRoute.of(context)!.settings.arguments as SuraModel;
    if (verses.isEmpty) {
      loadSuraFile(model.index!);
    }

    return Stack(
      children: [
        const Image(
          image: AssetImage(
            'assets/images/default_bg.png',
          ),
        ),
        Scaffold(
          appBar: AppBar(
            title: Text(
              'إسلامي',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 29, right: 29, top: 28),
                child: Container(
                  width: 354,
                  height: 600,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(.7),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 32,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 12),
                            child: Text(
                              'سورة ${model.name}',
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                          ),
                          const FaIcon(
                            Icons.play_circle,
                            size: 27,
                          ),
                        ],
                      ),
                      const Divider(
                        endIndent: 40,
                        indent: 40,
                      ),
                      const SizedBox(
                        height: 18,
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 32),
                          child: ListView.builder(
                            physics: const BouncingScrollPhysics(),
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: Text(
                                  verses[index],
                                  textAlign: TextAlign.center,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(
                                        fontWeight: FontWeight.w400,
                                      ),
                                ),
                              );
                            },
                            itemCount: verses.length,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  loadSuraFile(int index) async {
    String sura = await rootBundle.loadString('assets/files/${index + 1}.txt');
    List<String> suraLines = sura.split('\n');
    verses = suraLines;
    setState(() {});
  }
}

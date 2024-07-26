import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:islami_app/constant.dart';
import 'package:islami_app/models/sura_model.dart';
import 'package:islami_app/providers/sura_details_provider.dart';
import 'package:islami_app/providers/theme_provider.dart';
import 'package:provider/provider.dart';

class SuraDetailsView extends StatelessWidget {
  const SuraDetailsView({super.key});
  static const String id = 'SuraDetailsView';

  @override
  Widget build(BuildContext context) {
    var themeProvider = Provider.of<ThemeProvider>(context);
    var model = ModalRoute.of(context)!.settings.arguments as SuraModel;

    return Stack(
      children: [
        Image(
          image: AssetImage(
            themeProvider.appTheme == ThemeMode.dark
                ? 'assets/images/dark_bg.png'
                : 'assets/images/default_bg.png',
          ),
        ),
        ChangeNotifierProvider(
          create: (context) =>
              SuraDetailsProvider()..loadSuraFile(model.index!),
          builder: (context, child) {
            var provider = Provider.of<SuraDetailsProvider>(context);
            // if (provider.verses.isEmpty) {
            //   provider.loadSuraFile(model.index!);
            // }
            return Scaffold(
              appBar: AppBar(
                title: Text(
                  'islami',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
              body: Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 29, right: 29, top: 28),
                    child: Container(
                      width: 354,
                      height: 600,
                      decoration: BoxDecoration(
                        color: themeProvider.appTheme == ThemeMode.dark
                            ? kPrimaryColorDark
                            : Colors.white.withOpacity(.7),
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
                              FaIcon(
                                Icons.play_circle,
                                size: 27,
                                color: themeProvider.appTheme == ThemeMode.dark
                                    ? yellowColor
                                    : Colors.white,
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
                                      provider.verses[index],
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
                                itemCount: provider.verses.length,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}

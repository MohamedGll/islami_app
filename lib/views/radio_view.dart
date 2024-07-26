import 'package:flutter/material.dart';
import 'package:islami_app/constant.dart';
import 'package:islami_app/providers/theme_provider.dart';
import 'package:provider/provider.dart';

class RadioView extends StatelessWidget {
  const RadioView({super.key});
  static const String id = 'RadioView';

  @override
  Widget build(BuildContext context) {
    var themeProvider = Provider.of<ThemeProvider>(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Image(
          image: AssetImage(
            'assets/images/radio_image.png',
          ),
          height: 222,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 28),
          child: Text(
            'إذاعة القرآن الكريم',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.skip_previous,
                size: 42,
                color: themeProvider.appTheme == ThemeMode.dark
                    ? yellowColor
                    : kPrimaryColorLight,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.play_arrow_rounded,
                    size: 62,
                    color: themeProvider.appTheme == ThemeMode.dark
                        ? yellowColor
                        : kPrimaryColorLight),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.skip_next,
                  size: 42,
                  color: themeProvider.appTheme == ThemeMode.dark
                      ? yellowColor
                      : kPrimaryColorLight),
            ),
          ],
        ),
      ],
    );
  }
}

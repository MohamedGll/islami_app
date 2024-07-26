import 'package:flutter/material.dart';
import 'package:islami_app/constant.dart';
import 'package:islami_app/providers/theme_provider.dart';
import 'package:provider/provider.dart';

class ThemeBottomSheet extends StatelessWidget {
  const ThemeBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var themeProvider = Provider.of<ThemeProvider>(context);
    return Container(
      // height: MediaQuery.of(context).size.height * .6,
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: themeProvider.appTheme == ThemeMode.dark
            ? kPrimaryColorDark
            : Colors.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(28),
          topRight: Radius.circular(28),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          InkWell(
            onTap: () {
              themeProvider.changeTheme(ThemeMode.light);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Light',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: themeProvider.appTheme == ThemeMode.dark
                            ? Colors.white
                            : kPrimaryColorLight,
                      ),
                ),
                themeProvider.appTheme == ThemeMode.dark
                    ? const SizedBox()
                    : const Icon(
                        Icons.done,
                        color: kPrimaryColorLight,
                      ),
              ],
            ),
          ),
          const SizedBox(
            height: 18,
          ),
          InkWell(
            onTap: () {
              themeProvider.changeTheme(ThemeMode.dark);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Dark',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: themeProvider.appTheme == ThemeMode.dark
                            ? yellowColor
                            : Colors.black,
                      ),
                ),
                themeProvider.appTheme == ThemeMode.dark
                    ? const Icon(Icons.done, color: yellowColor)
                    : const SizedBox(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

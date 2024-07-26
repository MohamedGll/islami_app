import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/constant.dart';
import 'package:islami_app/providers/theme_provider.dart';
import 'package:islami_app/widgets/language_bottom_sheet.dart';
import 'package:islami_app/widgets/theme_bottom_sheet.dart';
import 'package:provider/provider.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});
  static const String id = 'SettingView';

  @override
  Widget build(BuildContext context) {
    var themeProvider = Provider.of<ThemeProvider>(context);
    Locale currenteLocale = context.locale;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(
            height: 18,
          ),
          Text(
            'theme'.tr(),
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(
            height: 18,
          ),
          GestureDetector(
            onTap: () {
              showModalBottomSheet(
                isDismissible: true,
                // isScrollControlled: true,
                context: context,
                builder: (context) {
                  return const ThemeBottomSheet();
                },
              );
            },
            child: Container(
              padding: const EdgeInsets.all(14),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(28),
                border: Border.all(
                    color: themeProvider.appTheme == ThemeMode.dark
                        ? yellowColor
                        : kPrimaryColorLight,
                    width: 2),
              ),
              child: Text(
                themeProvider.appTheme == ThemeMode.dark
                    ? 'dark'.tr()
                    : 'light'.tr(),
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Text(
            'language'.tr(),
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(
            height: 18,
          ),
          GestureDetector(
            onTap: () {
              showModalBottomSheet(
                isDismissible: true,
                // isScrollControlled: true,
                context: context,
                builder: (context) {
                  return const LanguageBottomSheet();
                },
              );
            },
            child: Container(
              padding: const EdgeInsets.all(14),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(28),
                border: Border.all(
                    color: themeProvider.appTheme == ThemeMode.dark
                        ? yellowColor
                        : kPrimaryColorLight,
                    width: 2),
              ),
              child: Text(
                currenteLocale == const Locale('ar')
                    ? 'arabic'.tr()
                    : 'english'.tr(),
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/constant.dart';
import 'package:islami_app/providers/theme_provider.dart';
import 'package:provider/provider.dart';

class LanguageBottomSheet extends StatelessWidget {
  const LanguageBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    Locale currenteLocale = context.locale;
    var themeProvider = Provider.of<ThemeProvider>(context);
    return Container(
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
              context.setLocale(const Locale('en'));
              // themeProvider.changeLanguage(context, 'en');
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'english'.tr(),
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: currenteLocale == const Locale('en')
                          ? kPrimaryColorLight
                          : Colors.black),
                ),
                currenteLocale == const Locale('en')
                    ? const Icon(
                        Icons.done,
                        color: kPrimaryColorLight,
                      )
                    : const SizedBox()
              ],
            ),
          ),
          const SizedBox(
            height: 18,
          ),
          InkWell(
            onTap: () {
              context.setLocale(const Locale('ar'));
              // themeProvider.changeLanguage(context, 'ar');
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'arabic'.tr(),
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: currenteLocale != const Locale('en')
                            ? kPrimaryColorLight
                            : Colors.black,
                      ),
                ),
                currenteLocale != const Locale('en')
                    ? const Icon(
                        Icons.done,
                        color: kPrimaryColorLight,
                      )
                    : const SizedBox()
              ],
            ),
          ),
        ],
      ),
    );
  }
}

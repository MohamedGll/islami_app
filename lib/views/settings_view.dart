import 'package:flutter/material.dart';
import 'package:islami_app/constant.dart';
import 'package:islami_app/widgets/language_bootom_sheet.dart';
import 'package:islami_app/widgets/theme_bottom_sheet.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});
  static const String id = 'SettingView';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(
            height: 18,
          ),
          Text(
            'Theme',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(
            height: 18,
          ),
          GestureDetector(
            onTap: () {
              showModalBottomSheet(
                isDismissible: true,
                isScrollControlled: true,
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
                border: Border.all(color: kPrimaryColorLight, width: 2),
              ),
              child: Text(
                'Light',
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Text(
            'Language',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(
            height: 18,
          ),
          GestureDetector(
            onTap: () {
              showModalBottomSheet(
                isDismissible: true,
                isScrollControlled: true,
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
                border: Border.all(color: kPrimaryColorLight, width: 2),
              ),
              child: Text(
                'English',
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

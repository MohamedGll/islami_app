import 'package:flutter/material.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});
  static const String id = 'SettingView';

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
          child: const Column(
            children: [
              SizedBox(
                height: 2,
              ),
              Text(
                'إسلامي',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontFamily: 'El Messiri',
                ),
              ),
              SizedBox(
                height: 2,
              ),
              Text(
                'اللغة',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontFamily: 'El Messiri',
                ),
                textAlign: TextAlign.right,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

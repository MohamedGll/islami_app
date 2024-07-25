import 'package:flutter/material.dart';
import 'package:islami_app/constant.dart';

class RadioView extends StatelessWidget {
  const RadioView({super.key});
  static const String id = 'RadioView';

  @override
  Widget build(BuildContext context) {
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
            'إذاعة القراّن الكريم',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.skip_previous,
                size: 42,
                color: kPrimaryColorLight,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.play_arrow_rounded,
                  size: 62,
                  color: kPrimaryColorLight,
                ),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.skip_next,
                size: 42,
                color: kPrimaryColorLight,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

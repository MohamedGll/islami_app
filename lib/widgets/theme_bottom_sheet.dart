import 'package:flutter/material.dart';
import 'package:islami_app/constant.dart';

class ThemeBottomSheet extends StatelessWidget {
  const ThemeBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: MediaQuery.of(context).size.height * .6,
      padding: const EdgeInsets.all(18),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(28),
          topRight: Radius.circular(28),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          InkWell(
            onTap: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Light',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: kPrimaryColorLight,
                      ),
                ),
                const Icon(
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
            onTap: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Dark',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      // color: kPrimaryColorLight,
                      ),
                ),
                // const Icon(
                //   Icons.done,
                //   color: kPrimaryColorLight,
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

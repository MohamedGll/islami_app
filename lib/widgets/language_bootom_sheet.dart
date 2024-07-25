import 'package:flutter/material.dart';
import 'package:islami_app/constant.dart';

class LanguageBottomSheet extends StatelessWidget {
  const LanguageBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'English',
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
          const SizedBox(
            height: 18,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Arabic',
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
        ],
      ),
    );
  }
}

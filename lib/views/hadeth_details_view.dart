import 'package:flutter/material.dart';
import 'package:islami_app/models/hadeth_model.dart';

class HadethDetailsView extends StatefulWidget {
  const HadethDetailsView({super.key});
  static const String id = 'HadethDetailsView';

  @override
  State<HadethDetailsView> createState() => _HadethDetailsViewState();
}

class _HadethDetailsViewState extends State<HadethDetailsView> {
  @override
  Widget build(BuildContext context) {
    var model = ModalRoute.of(context)!.settings.arguments as HadethModel;

    return Scaffold(
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
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 29, right: 29, top: 28),
              child: Container(
                width: 354,
                height: 600,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(.7),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 28,
                    ),
                    Text(
                      '${model.title}',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    const Divider(
                      endIndent: 40,
                      indent: 40,
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
                                textDirection: TextDirection.rtl,
                                model.content![index],
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                            );
                          },
                          itemCount: model.content?.length,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

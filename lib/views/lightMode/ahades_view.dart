import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/constant.dart';
import 'package:islami_app/models/hadeth_model.dart';
import 'package:islami_app/views/lightMode/hadeth_details_view.dart';

class AhadesView extends StatefulWidget {
  const AhadesView({super.key});
  static const String id = 'AhadesView';

  @override
  State<AhadesView> createState() => _AhadesViewState();
}

class _AhadesViewState extends State<AhadesView> {
  List<HadethModel> allAhadeth = const [];

  @override
  void initState() {
    super.initState();
    loadHadethFile();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Image(
          image: AssetImage(
            'assets/images/hadeth_logo.png',
          ),
          height: 219,
          width: 312,
        ),
        const Divider(
          color: kPrimaryColorLight,
          thickness: 3,
        ),
        Text(
          'الأحاديث',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        const Divider(
          color: kPrimaryColorLight,
          thickness: 3,
        ),
        Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      HadethDetailsView.id,
                      arguments: allAhadeth[index],
                    );
                  },
                  child: Text(
                    '${allAhadeth[index].title}',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ),
              );
            },
            itemCount: allAhadeth.length,
          ),
        ),
      ],
    );
  }

  loadHadethFile() {
    rootBundle.loadString('assets/files/ahadeth.txt').then(
      (value) {
        List<String> hadethList = value.trim().split('#');
        for (int i = 0; i < hadethList.length; i++) {
          String oneHadeth = hadethList[i];
          List<String> hadethLines = oneHadeth.trim().split('\n');
          String title = hadethLines[0];
          hadethLines.removeAt(0);
          List<String> content = hadethLines;
          HadethModel hadethModel = HadethModel(title, content);
          print(title);
          allAhadeth.add(hadethModel);
          setState(() {});
        }
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:islami_app/providers/ahadeth_provider.dart';
import 'package:islami_app/views/hadeth_details_view.dart';
import 'package:provider/provider.dart';

class AhadesView extends StatelessWidget {
  const AhadesView({super.key});
  static const String id = 'AhadesView';

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AhadethProvider(),
      builder: (context, child) {
        var provider = Provider.of<AhadethProvider>(context);
        if (provider.allAhadeth.isEmpty) {
          provider.loadHadethFile();
        }
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
              thickness: 3,
            ),
            Text(
              'الأحاديث',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const Divider(
              thickness: 3,
            ),
            Expanded(
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          HadethDetailsView.id,
                          arguments: provider.allAhadeth[index],
                        );
                      },
                      child: Text(
                        '${provider.allAhadeth[index].title}',
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ),
                  );
                },
                itemCount: provider.allAhadeth.length,
              ),
            ),
          ],
        );
      },
    );
  }
}

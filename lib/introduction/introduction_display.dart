import 'package:flutter/material.dart';
import 'package:portfolio_rnf/introduction/introduction_core_page.dart';
import 'package:portfolio_rnf/services/local/enum_collections.dart';

class IntroductionDisplay extends StatelessWidget {
  final IntroductionCore core;

  const IntroductionDisplay({
    super.key,
    required this.core,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: core.introductionCardList[core.introductionIndex].showCard(),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                core.introductionIndex != 0 ?
                InkWell(
                  onTap: () => core.onChangeIntroductionIndex(
                    type: DirectionalType.previous,
                  ),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width / 3,
                    child: const Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 10.0,
                      ),
                      child: Text(
                        "Kembali",
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ) :
                const Material(),
                core.introductionIndex < core.introductionCardList.length - 1 ?
                InkWell(
                  onTap: () => core.onChangeIntroductionIndex(
                    type: DirectionalType.next,
                  ),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width / 3,
                    child: const Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 10.0,
                      ),
                      child: Text(
                        "Lanjut",
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ) :
                const Material(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
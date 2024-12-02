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
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    core.introductionCardList[core.introductionIndex].showCard(),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                core.introductionIndex != 0 ?
                Padding(
                  padding: const EdgeInsets.only(
                    left: 10.0,
                  ),
                  child: InkWell(
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
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ) :
                const Material(),
                core.introductionIndex < core.introductionCardList.length - 1 ?
                Padding(
                  padding: const EdgeInsets.only(
                    right: 10.0,
                  ),
                  child: InkWell(
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
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ) :
                const Material(),
              ],
            ),
            SizedBox(
              height: 50.0,
              child: ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: core.introductionCardList.length,
                separatorBuilder: (separatorContext, separatorIndex) {
                  return const SizedBox(
                    width: 10.0,
                  );
                },
                itemBuilder: (dotContext, dotIndex) {
                  return Container(
                    width: 20.0,
                    height: 20.0,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white,
                      ),
                      color: core.introductionIndex == dotIndex
                          ? Colors.white
                          : Theme.of(context).colorScheme.primary,
                      shape: BoxShape.circle,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
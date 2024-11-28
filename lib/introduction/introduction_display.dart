import 'package:flutter/material.dart';
import 'package:portfolio_rnf/introduction/introduction_core_page.dart';

class IntroductionDisplay extends StatelessWidget {
  final IntroductionCore core;

  const IntroductionDisplay({
    super.key,
    required this.core,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView(),
          ),
        ],
      ),
    );
  }
}
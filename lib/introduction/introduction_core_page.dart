import 'package:flutter/material.dart';
import 'package:portfolio_rnf/introduction/introduction_display.dart';

class IntroductionPage extends StatefulWidget {
  const IntroductionPage({super.key});

  @override
  State createState() => IntroductionCore();
}

class IntroductionCore extends State<IntroductionPage> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return IntroductionDisplay(core: this);
  }
}
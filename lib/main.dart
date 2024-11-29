import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:portfolio_rnf/introduction/introduction_core_page.dart';
import 'package:portfolio_rnf/services/local/static_variables.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]).then((_) => runApp(const PortfolioRNF()));
}

class PortfolioRNF extends StatelessWidget {
  const PortfolioRNF({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RNF Portfolio',
      theme: ThemeData(
        colorScheme: StaticVariables.customColorScheme,
        fontFamily: "Montserrat",
        useMaterial3: false,
      ),
      routes: {
        "/": (context) => const IntroductionPage(),
      },
    );
  }
}

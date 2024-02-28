import 'package:flutter/material.dart';
import 'package:plasteco/modules/onboarding/onboarding_view.dart';

void main() {
  runApp(const PlastEco());
}

class PlastEco extends StatelessWidget {
  const PlastEco({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Plastic Eco",
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      routes: {
        OnBoardingView.routeName: (context) => const OnBoardingView(),
      },
      initialRoute: OnBoardingView.routeName,
    );
  }
}

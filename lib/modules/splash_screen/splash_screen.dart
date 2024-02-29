import 'package:flutter/material.dart';
import 'package:plasteco/modules/onboarding/onboarding_view.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  static const String routeName = 'SplashScreen';
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    _splashFunction();
    super.initState();
  }

  void _splashFunction() async {
    await Future.delayed(
      const Duration(
        seconds: 6,
      ),
    ).then(
      (value) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (BuildContext context) {
            return const OnBoardingView();
          }),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEEEEEE),
      appBar: AppBar(
        backgroundColor: const Color(0xffEEEEEE),
        toolbarHeight: 0,
      ),
      body: Column(
        children: [
          const Spacer(flex: 1),
          Image.asset('lib/assets/images/splash.png'),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              textAlign: TextAlign.center,
              'Together to turn waste into hope for a better planet',
              style: TextStyle(
                fontFamily: 'Amiri',
                fontWeight: FontWeight.w600,
                fontSize: 32,
                color: Colors.green,
              ),
            ),
          ),
          const Spacer(flex: 2)
        ],
      ),
    );
  }
}

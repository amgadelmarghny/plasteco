import 'package:flutter/material.dart';
import 'package:plasteco/layout/home/home.dart';
import 'package:plasteco/modules/login/login_view.dart';
import 'package:plasteco/modules/onboarding/onboarding_view.dart';
import 'package:plasteco/modules/register/register_view.dart';
import 'package:plasteco/modules/splash_screen/splash_screen.dart';
import 'package:plasteco/shared/bloc/app_cubit/app_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plasteco/shared/theme/themes.dart';

void main() {
  runApp(const PlastEco());
}

class PlastEco extends StatelessWidget {
  const PlastEco({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppCubit(),
      child: MaterialApp(
        title: "Plastic Eco",
        theme: ThemeStyle.lightTheme(),
        themeMode: ThemeMode.system,
        debugShowCheckedModeBanner: false,
        routes: {
          OnBoardingView.routeName: (context) => const OnBoardingView(),
          SplashScreen.routeName: (context) => const SplashScreen(),
          HomeView.routeName: (context) => const HomeView(),
          LoginView.routeName: (context) => const LoginView(),
          RegisterView.routeName: (context) => const RegisterView(),
        },
        initialRoute: LoginView.routeName,
      ),
    );
  }
}

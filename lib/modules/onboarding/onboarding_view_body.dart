import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plasteco/modules/login/login_view.dart';
import 'package:plasteco/modules/onboarding/onboarding_templete.dart';
import 'package:plasteco/shared/bloc/app_cubit/app_cubit.dart';
import 'package:plasteco/shared/colors/colors.dart';
import 'package:plasteco/shared/components/navigation.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final PageController pageController = PageController();
    final AppCubit appCubit = context.read<AppCubit>();
    final double h = MediaQuery.sizeOf(context).height;

    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 30),
      child: BlocBuilder<AppCubit, AppState>(
        builder: (context, state) {
          return Column(
            children: [
              Expanded(
                child: PageView.builder(
                  controller: pageController,
                  onPageChanged: (index) {
                    appCubit.onBoardingPage(index);
                  },
                  itemCount: appCubit.onBoardingsList.length,
                  itemBuilder: (context, index) {
                    return OnBoardingTemplete(
                      onBoardingModel: appCubit.onBoardingsList[index],
                    );
                  },
                ),
              ),
              SmoothPageIndicator(
                controller: pageController,
                count: appCubit.onBoardingsList.length,
                effect: const ExpandingDotsEffect(
                  expansionFactor: 7,
                  activeDotColor: defaultColor,
                  dotColor: defaultColor,
                  spacing: 5,
                  dotHeight: 8,
                  dotWidth: 7,
                ),
              ),
              SizedBox(height: h * 0.1),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {
                      navigatorPushAndRemove(
                        context,
                        LoginView.routeName,
                      );
                    },
                    child: const Text(
                      'SKIP',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        decorationThickness: 1.5,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.green,
                        fontFamily: 'Amiri',
                      ),
                    ),
                  ),
                ],
              )
            ],
          );
        },
      ),
    );
  }
}

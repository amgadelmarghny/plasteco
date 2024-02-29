import 'package:bloc/bloc.dart';
import 'package:plasteco/models/on_boarding_model.dart';

part 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppInitial());

  List<OnBoardingModel> onBoardingsList = [
    OnBoardingModel(
      image: 'lib/assets/images/onboarding1.png',
      firstTitle: 'Take advantage of',
      secondTitle: 'the humble west food',
    ),
    OnBoardingModel(
      image: 'lib/assets/images/onboarding2.png',
      firstTitle: 'Transform west food',
      secondTitle: 'into valuable resources',
    ),
    OnBoardingModel(
      image: 'lib/assets/images/onboarding3.png',
      firstTitle: 'Delivering transformed',
      secondTitle: 'products to you',
    ),
  ];

  int currentOnBoardingPage = 0;
  void onBoardingPage(int page) {
    currentOnBoardingPage = page;
    emit(OnBoardingPageChanged());
  }
}

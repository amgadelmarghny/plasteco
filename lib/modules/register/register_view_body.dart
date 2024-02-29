import 'package:flutter/material.dart';
import 'package:plasteco/modules/login/login_view.dart';
import 'package:plasteco/modules/register/sliver_register_input.dart';
import 'package:plasteco/shared/components/custom_sliver_row_text.dart';

class RegisterViewBody extends StatelessWidget {
  const RegisterViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverRegisterInfo(),
        CustomSliverRowText(
          alertSentence: 'Already have account?',
          text: 'Login',
          routeName: LoginView.routeName,
        ),
      ],
    );
  }
}

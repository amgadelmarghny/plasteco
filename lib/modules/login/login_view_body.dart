import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:plasteco/modules/login/sliver_login_input.dart';
import 'package:plasteco/modules/register/register_view.dart';
import 'package:plasteco/shared/components/custom_sliver_row_text.dart';

class LoginViewBody extends StatefulWidget {
  const LoginViewBody({
    super.key,
  });

  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {
  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverLoginInfo(),
        CustomSliverRowText(
          alertSentence: 'Don\'t have an account?',
          text: 'Sign Up',
          routeName: RegisterView.routeName,
        )
      ],
    );
  }
}

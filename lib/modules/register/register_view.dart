import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plasteco/modules/register/register_view_body.dart';
import 'package:plasteco/shared/bloc/auth_cubit/auth_cubit.dart';


class RegisterView extends StatelessWidget {
  const RegisterView({super.key});
  static const String routeName = 'register';
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthCubit(),
      child: const Scaffold(
        body: RegisterViewBody(),
      ),
    );
  }
}

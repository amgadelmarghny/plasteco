import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plasteco/modules/register/form_input.dart';
import 'package:plasteco/shared/bloc/auth_cubit/auth_cubit.dart';

class SliverRegisterInfo extends StatelessWidget {
  const SliverRegisterInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formKey = GlobalKey();
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {},
      builder: (context, state) {
        return SliverToBoxAdapter(
          child: registerFormInput(formKey, context, state),
        );
      },
    );
  }
}

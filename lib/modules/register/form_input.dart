import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plasteco/shared/bloc/auth_cubit/auth_cubit.dart';
import 'package:plasteco/shared/components/cover_image.dart';
import 'package:plasteco/shared/components/custom_buttomt.dart';
import 'package:plasteco/shared/components/icon_auth_list_view.dart';
import 'package:plasteco/shared/components/textformfield.dart';

Form registerFormInput(
    GlobalKey<FormState> formKey, BuildContext context, AuthState state) {
  return Form(
    key: formKey,
    autovalidateMode: BlocProvider.of<AuthCubit>(context).autovalidateMode,
    child: Column(
      children: [
        curveImageBuilder(context),
        Transform.translate(
          offset: const Offset(0, -53),
          child: Container(
            padding: const EdgeInsets.only(
              top: 30,
              left: 20,
              right: 20,
            ),
            clipBehavior: Clip.hardEdge,
            decoration: ShapeDecoration(
              color: Theme.of(context).scaffoldBackgroundColor,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(60),
                  topLeft: Radius.circular(60),
                ),
              ),
            ),
            child: Column(
              children: [
                CustomTextField(
                  prefixIcon: Icons.person_outlined,
                  onChange: (value) {},
                  hintText: 'Enter Name',
                  textInputType: TextInputType.name,
                  labelText: "Name",
                ),
                const SizedBox(
                  height: 15,
                ),
                CustomTextField(
                  prefixIcon: Icons.email_outlined,
                  onChange: (value) {},
                  hintText: 'Enter Email',
                  textInputType: TextInputType.emailAddress,
                  labelText: "Email",
                ),
                const SizedBox(
                  height: 15,
                ),
                CustomTextField(
                  obscureText: BlocProvider.of<AuthCubit>(context).obscureText,
                  prefixIcon: Icons.lock_outline,
                  onChange: (value) {},
                  hintText: 'Enter Password',
                  textInputType: TextInputType.visiblePassword,
                  suffixIcon: BlocProvider.of<AuthCubit>(context).suffixIcon,
                  suffixOnPressed: () {
                    BlocProvider.of<AuthCubit>(context).onEyesPressed();
                  },
                  labelText: "Password",
                ),
                const SizedBox(
                  height: 15,
                ),
                CustomTextField(
                  prefixIcon: Icons.phone_outlined,
                  onChange: (value) {},
                  hintText: 'Enter Phone Number',
                  textInputType: TextInputType.phone,
                  labelText: "Phone",
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  'Sign up with',
                ),
                const SizedBox(height: 20),
                const IconAuthlistView(),
                const SizedBox(
                  height: 30,
                ),
                CustomButton(
                  width: MediaQuery.sizeOf(context).width / 1.7,
                  radius: 25,
                  isLoading: state is LoginLodingState ? true : false,
                  text: 'SIGN UP',
                  onTap: () {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                    } else {
                      BlocProvider.of<AuthCubit>(context).validateObserver();
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}

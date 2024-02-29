import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.onChange,
    this.obscureText = false,
    this.hintText,
    this.textInputType,
    this.suffixIcon,
    this.suffixOnPressed,
    this.prefixIcon,
    this.labelText,
    this.controller,
  });

  final TextEditingController? controller;
  final IconData? suffixIcon;
  final IconData? prefixIcon;
  final TextInputType? textInputType;
  final bool obscureText;
  final String? hintText;
  final void Function(String)? onChange;
  final Function()? suffixOnPressed;
  final String? labelText;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Theme.of(context).scaffoldBackgroundColor,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            blurRadius: 10,
            spreadRadius: 8,
          ),
        ],
      ),
      child: TextFormField(
        maxLines: 1,
        keyboardType: textInputType,
        obscureText: obscureText,
        validator: (data) {
          if (data!.isEmpty) {
            return 'FIELD IS EMPTY';
          }
          return null;
        },
        controller: controller,
        onChanged: onChange,
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 30, vertical: 18),
          suffixIcon: suffixIcon != null
              ? IconButton(
                  onPressed: suffixOnPressed,
                  icon: Icon(
                    suffixIcon,
                  ),
                )
              : null,
          prefixIcon: prefixIcon != null
              ? Icon(
                  prefixIcon,
                )
              : null,
          hintText: hintText,
          hintStyle: const TextStyle(fontSize: 18),
          labelText: labelText,
          labelStyle: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(
              color: Theme.of(context).scaffoldBackgroundColor,
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.transparent,
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(
              color: Colors.transparent,
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:plasteco/shared/colors/colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.onTap,
    this.isLoading = false,
    required this.text,
    this.width = double.infinity,
    this.radius = 8,
  });
  final double radius;
  final double? width;
  final void Function()? onTap;
  final bool isLoading;
  final String text;
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.sizeOf(context).height;
    return InkWell(
      onTap: onTap,
      child: Container(
        height: h * 0.07,
        width: width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.green[600]!,
              Colors.green[300]!,
              Colors.green[200]!,
              Colors.green[100]!,
            ],
            begin: Alignment.centerRight,
            end: Alignment.centerLeft,
          ),
          borderRadius: BorderRadius.circular(radius),
        ),
        child: Center(
          child: isLoading
              ? const SizedBox(
                  height: 24,
                  width: 24,
                  child: CircularProgressIndicator(
                    color: defaultColor,
                  ),
                )
              : Text(
                  text,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
        ),
      ),
    );
  }
}

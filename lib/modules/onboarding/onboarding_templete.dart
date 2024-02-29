import 'package:flutter/material.dart';
import 'package:plasteco/models/on_boarding_model.dart';
import 'package:plasteco/shared/fonts/font_style.dart';

class OnBoardingTemplete extends StatelessWidget {
  const OnBoardingTemplete({super.key, required this.onBoardingModel});
  final OnBoardingModel onBoardingModel;
  @override
  Widget build(BuildContext context) {
    final double h = MediaQuery.sizeOf(context).height;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(
          child: Image.asset(
            onBoardingModel.image,
          ),
        ),
        Text(
          onBoardingModel.firstTitle,
          style: FontsClass.font20bold,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          onBoardingModel.secondTitle,
          style: FontsClass.font20bold,
        ),
        const SizedBox(
          height: 10,
        ),
        if (onBoardingModel.therdTitle != null)
          Text(
            onBoardingModel.therdTitle!,
            style: FontsClass.font20bold,
          ),
        SizedBox(
          height: h * .1,
        ),
      ],
    );
  }
}

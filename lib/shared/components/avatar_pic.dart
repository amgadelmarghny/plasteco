import 'package:flutter/material.dart';
import 'package:plasteco/shared/colors/colors.dart';

class AvatarPic extends StatelessWidget {
  const AvatarPic({
    super.key,
    required this.image,
    this.hight = 80,
  });

  final String image;
  final double hight;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3),
      height: hight,
      decoration:
          const BoxDecoration(color: defaultColor, shape: BoxShape.circle),
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: const BoxDecoration(shape: BoxShape.circle),
        child: Image.network(
          image,
        ),
      ),
    );
  }
}

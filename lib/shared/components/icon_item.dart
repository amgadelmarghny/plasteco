import 'package:flutter/material.dart';

class IconItem extends StatelessWidget {
  const IconItem({
    super.key,
    this.onTap,
    required this.image,
  });
  final void Function()? onTap;
  final String image;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(shape: BoxShape.circle, boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.4),
            blurRadius: 6,
            spreadRadius: 6,
          ),
        ]),
        child: CircleAvatar(
          backgroundColor: Colors.white,
          radius: 25,
          child: Image.asset(
            image,
            height: 40,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

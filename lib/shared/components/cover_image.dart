import 'package:flutter/material.dart';

Container curveImageBuilder(context) {
  return Container(
    height: MediaQuery.sizeOf(context).height * 0.35,
    width: double.infinity,
    padding: const EdgeInsets.only(bottom: 20),
    decoration: BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.centerRight,
        end: Alignment.centerLeft,
        colors: [
          Colors.green[600]!,
          Colors.green[300]!,
          Colors.green[100]!,
        ],
      ),
    ),
    child: Image.asset(
      'lib/assets/images/logo.png',
    ),
  );
}

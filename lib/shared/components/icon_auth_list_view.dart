import 'package:flutter/material.dart';
import 'package:plasteco/shared/components/icon_item.dart';

class IconAuthlistView extends StatelessWidget {
  const IconAuthlistView({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> icons = const [
      'lib/assets/images/facebook.png',
      'lib/assets/images/google.png',
      'lib/assets/images/apple.png',
    ];
    return Center(
      child: SizedBox(
        height: 59,
        width: (59 * 3) + 40,
        child: ListView.separated(
          itemBuilder: (context, index) => IconItem(
            image: icons[index],
          ),
          separatorBuilder: (context, index) => const SizedBox(
            width: 20,
          ),
          itemCount: icons.length,
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}

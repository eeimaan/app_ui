import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final int currentIndex;

  const CustomAppBar({super.key, required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: const Icon(Icons.arrow_back_ios),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          buildDot(0),
          const SizedBox(width: 8),
          buildDot(1),
          const SizedBox(width: 8),
          buildDot(2),
          const SizedBox(width: 8),
          buildDot(3),
          const SizedBox(width: 8),
          buildDot(4),
        ],
      ),
    );
  }
Container buildDot(int index) {
  List<Color> dotColors = [
    Colors.red,
    Colors.blue,
    Colors.yellow,
    Colors.purple,
    Colors.red,
  ];

  return Container(
    height: 4,
    width: currentIndex >= index ? 18 : 10,
    decoration: BoxDecoration(
      shape: BoxShape.rectangle,
      borderRadius: BorderRadius.circular(4),
      color: currentIndex >= index ? dotColors[index] : Colors.grey,
    ),
  );
}


  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}


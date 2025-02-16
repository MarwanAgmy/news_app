import 'package:flutter/material.dart';

class TitleAppBar extends StatelessWidget {
  const TitleAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'News',
          style: TextStyle(color: Colors.black),
        ),
        Text(
          'Cloud',
          style: TextStyle(color: Colors.orange),
        ),
      ],
    );
  }
}

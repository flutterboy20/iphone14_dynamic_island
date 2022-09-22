import 'package:flutter/material.dart';

class MusicCollapsed extends StatelessWidget {
  const MusicCollapsed({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: Image.asset(
            'assets/images/thunder.png',
            height: 20,
            fit: BoxFit.contain,
          ),
        ),
        const Spacer(),
        Image.asset(
          'assets/images/waves.png',
          fit: BoxFit.contain,
          width: 70,
        )
      ],
    );
  }
}

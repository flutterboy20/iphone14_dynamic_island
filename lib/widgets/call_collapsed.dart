import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class CallCollapsed extends StatelessWidget {
  const CallCollapsed({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: const [
            Icon(
              CupertinoIcons.phone_fill,
              color: Colors.greenAccent,
              size: 16,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              '23:14',
              style: TextStyle(color: Colors.greenAccent),
            )
          ],
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
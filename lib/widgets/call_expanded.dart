import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CallExpanded extends StatelessWidget {
  const CallExpanded({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        FittedBox(
          child: Row(
            children: [
              const CircleAvatar(
                backgroundColor: Colors.white,
                backgroundImage: AssetImage('assets/images/flutter_boy.png'),
                radius: 24,
              ),
              const SizedBox(width: 10.0),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'iPhone',
                    style: TextStyle(
                        color: Colors.grey.withOpacity(0.6),
                        fontWeight: FontWeight.w500,
                        fontSize: 12),
                  ),
                  const Text('Flutter Boy',
                      style: TextStyle(color: Colors.white, fontSize: 16)),
                ],
              )
            ],
          ),
        ),
        const Spacer(),
        Row(
          children: const [
            CircleAvatar(
              backgroundColor: Colors.red,
              radius: 22,
              child: Icon(
                CupertinoIcons.phone_down_fill,
                color: Colors.white,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            CircleAvatar(
              backgroundColor: Colors.green,
              radius: 22,
              child: Icon(
                CupertinoIcons.phone_fill,
                color: Colors.white,
              ),
            ),
          ],
        )
      ],
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MusicExpanded extends StatelessWidget {
  const MusicExpanded({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(18),
              child: Image.asset(
                'assets/images/thunder.png',
                height: 60,
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(width: 15),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('THUNDER', style: TextStyle(color: Colors.white)),
                Text(
                  'Imagin Dragon',
                  style: TextStyle(
                      color: Colors.grey.withOpacity(0.6),
                      fontWeight: FontWeight.w500,
                      fontSize: 14),
                ),
              ],
            ),
            const Spacer(),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  'assets/images/waves.png',
                  fit: BoxFit.contain,
                  width: 70,
                )
              ],
            )
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          children: [
            Text(
              '1:40',
              style: TextStyle(
                  color: Colors.grey.withOpacity(0.6),
                  fontWeight: FontWeight.w500,
                  fontSize: 10),
            ),
            const SizedBox(
              width: 8,
            ),
            Expanded(
                child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: const LinearProgressIndicator(
                value: 0.25,
                backgroundColor: Colors.grey,
                color: Colors.white,
              ),
            ),),
            const SizedBox(
              width: 8,
            ),
            Text(
              '-2:35',
              style: TextStyle(
                  color: Colors.grey.withOpacity(0.6),
                  fontWeight: FontWeight.w500,
                  fontSize: 10),
            )
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          children: [
            const Spacer(),
            Expanded(
              flex: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    CupertinoIcons.backward_end_alt_fill,
                    color: Colors.white,
                    size: 30,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Icon(
                    Icons.pause,
                    color: Colors.white,
                    size: 30,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Icon(
                    CupertinoIcons.forward_end_alt_fill,
                    color: Colors.white,
                    size: 30,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Icon(
                    CupertinoIcons.antenna_radiowaves_left_right,
                    color: Colors.white,
                    size: 30,
                  ),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}

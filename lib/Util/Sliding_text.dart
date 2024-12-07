import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class SlidingText extends StatelessWidget {
  final String text;
  final int delay;

  const SlidingText({super.key, required this.text, required this.delay});

  @override
  Widget build(BuildContext context) {
    return Animate(
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 28,
          color: Colors.white,
        ),
      ).animate(effects: [
        FadeEffect(duration: 1000.ms),
        MoveEffect(
            begin: const Offset(300, 0),
            duration: 0.9.seconds,
            delay: Duration(milliseconds: delay))
      ]),
    );
  }
}

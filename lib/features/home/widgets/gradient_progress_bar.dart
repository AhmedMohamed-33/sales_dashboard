import 'package:flutter/material.dart';

class GradientProgressBar extends StatelessWidget {
  final double progress;

  const GradientProgressBar({super.key, required this.progress});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 20,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: ShaderMask(
          shaderCallback: (Rect bounds) {
            return const LinearGradient(
              colors: [Color(0xffA36BFD), Color(0xff6B8AEB)],
            ).createShader(bounds);
          },
          child: LinearProgressIndicator(
            value: progress,
            color: Colors.white,
            backgroundColor: Colors.white,
            valueColor: const AlwaysStoppedAnimation<Color>(Colors.white),
          ),
        ),
      ),
    );
  }
}

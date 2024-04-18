import 'package:flutter/material.dart';

class BackgroundGradient extends StatelessWidget {
  const BackgroundGradient({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 800,
      height: 800,
      // color: Colors.red,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color.fromRGBO(7, 99, 128, 0.20),
            Color.fromRGBO(152, 99, 238, 0.05),
          ],
        ),
      ),
    );
  }
}

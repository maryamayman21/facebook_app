import 'package:flutter/material.dart';

class FaceBookLogo extends StatelessWidget {
  const FaceBookLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 200),
      height: 70,
      decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/facebook_logo.jpeg')),
      ),
    );
  }
}

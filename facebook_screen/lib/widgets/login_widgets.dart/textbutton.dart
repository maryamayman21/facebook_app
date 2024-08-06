import 'package:flutter/material.dart';

class Textbutton extends StatelessWidget {
  const Textbutton({super.key, required this.text, required this.onTap});
  final String text;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed:onTap,
        child:  Text(
          text,
          style: const TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
        ));
  }
}

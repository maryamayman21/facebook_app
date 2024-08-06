import 'package:flutter/material.dart';

class PostActions extends StatelessWidget {
  const PostActions({super.key, required this.text, required this.actionImage});
  final String text;
  final String actionImage;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            margin: const EdgeInsets.all(8.0),
            height: 25,
            width: 25,
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage(actionImage),
            ))),
        Text(
          text,
          style: const TextStyle(fontSize: 16),
        ),
      ],
    );
  }
}

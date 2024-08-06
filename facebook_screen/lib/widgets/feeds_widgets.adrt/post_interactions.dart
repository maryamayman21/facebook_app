import 'package:flutter/material.dart';

class PostInteractions extends StatelessWidget {
  const PostInteractions({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 8),
          child: Text('100'),
        ),
        Container(
            margin: const EdgeInsets.all(8.0),
            height: 50,
            width: 50,
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage('assets/like.jpg'),
            ))),
        const Expanded(
          child: Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('100 comments'),
              )),
        ),
      ],
    );
  }
}

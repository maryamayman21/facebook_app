import 'package:flutter/material.dart';

class PostData extends StatelessWidget {
  const PostData({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          'My post',
          style: TextStyle(fontSize: 32),
        ),
      ),
    );
  }
}

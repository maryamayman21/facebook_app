import 'package:facebook_screen/screens/feed_screen.dart';
import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 120),
      child: MaterialButton(
        minWidth: double.infinity,
        padding: const EdgeInsets.all(8),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const FeedScreen()));
        },
        color: const Color(0xff4E68A1),
        child: const Text(
          'LOG IN',
          style: TextStyle(
              color: Color(0xff9CA9CB),
              fontSize: 16,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

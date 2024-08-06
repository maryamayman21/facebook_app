import 'package:facebook_screen/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const FacebookLoginScreen());
}

class FacebookLoginScreen extends StatelessWidget {
  const FacebookLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: LoginScreen());
  }
}

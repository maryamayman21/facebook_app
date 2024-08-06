import 'package:facebook_screen/widgets/login_widgets.dart/app_logo.dart';
import 'package:facebook_screen/widgets/login_widgets.dart/email_field.dart';
import 'package:facebook_screen/widgets/login_widgets.dart/login_button.dart';
import 'package:facebook_screen/widgets/login_widgets.dart/password_field.dart';
import 'package:facebook_screen/widgets/login_widgets.dart/textbutton.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  bool _obscurePassword = true;

  final _formKey = GlobalKey<FormState>();

  // Define your validator function
  String? validateEmailTextField(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter some text';
    } else if (!value.endsWith('.com') && !value.contains('@')) {
      return 'Please Enter valide email address';
    }
    return null;
  }

  String? validatePasswordTextField(String? value) {
    if (value!.isEmpty) {
      return 'Please enter your password';
    } else if (value.length < 8) {
      return 'Please enter at least 8 character password';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff38559F),
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //logo

                const FaceBookLogo(),

                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      EmailField(
                        controller: _emailController,
                        validate: validateEmailTextField,
                      ),
                      PasswordField(
                        controller: _passwordController,
                        validate: validatePasswordTextField,
                        obscurePassword: _obscurePassword,
                        onToggle: () {
                          setState(() {
                            _obscurePassword = !_obscurePassword;
                          });
                        },
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      const LoginButton(),
                      Textbutton(
                        onTap: () {},
                        text: 'Sign Up for Facebook',
                      ),
                      Textbutton(
                        onTap: () {},
                        text: 'Forget password?',
                      ),
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }
}

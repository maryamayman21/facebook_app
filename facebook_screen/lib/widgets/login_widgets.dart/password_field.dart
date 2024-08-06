import 'package:flutter/material.dart';

class PasswordField extends StatelessWidget {
  const PasswordField(
      {super.key,
      required this.controller,
      this.validate,
      required this.obscurePassword,
      this.onToggle});
  final TextEditingController controller;
  final String? Function(String?)? validate;
  final bool obscurePassword;
  final void Function()? onToggle;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(color: Colors.white, fontSize: 16),
      decoration: InputDecoration(
          hintText: 'Password',
          hintStyle: const TextStyle(
              color: Color(0xff9CA9CB),
              fontSize: 20,
              fontWeight: FontWeight.bold),
          suffixIcon: IconButton(
            icon: obscurePassword
                ? const Icon(Icons.visibility)
                : const Icon(Icons.visibility_off),
            onPressed: onToggle,
          )),
      controller: controller,
      keyboardType: TextInputType.text,
      autovalidateMode: AutovalidateMode.always,
      validator: validate,
      obscureText: obscurePassword,
    );
  }
}

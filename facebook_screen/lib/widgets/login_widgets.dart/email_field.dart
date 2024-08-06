import 'package:flutter/material.dart';

class EmailField extends StatelessWidget {
  const EmailField(
      {super.key, required this.controller, required this.validate});
  final TextEditingController controller;
  final String? Function(String?)? validate;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        style: const TextStyle(color: Colors.white, fontSize: 16),
        decoration: const InputDecoration(
            hintText: 'Email or phone',
            hintStyle: TextStyle(
                color: Color(0xff9CA9CB),
                fontSize: 20,
                fontWeight: FontWeight.bold)),
        controller: controller,
        keyboardType: TextInputType.emailAddress,
        autovalidateMode: AutovalidateMode.always,
        validator: validate);
  }
}

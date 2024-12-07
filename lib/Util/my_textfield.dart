import 'package:flutter/material.dart';

class my_textfield extends StatelessWidget {
  final TextEditingController controller;
  final String hinttext;
  final bool obscureText;
  final IconData? icon;
  final String? Function(String?)? validator;
  const my_textfield(
      {super.key,
      required this.controller,
      required this.hinttext,
      required this.obscureText,
      required this.icon,
      this.validator});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          TextFormField(
            validator: validator,
            style: const TextStyle(color: Colors.blue),
            controller: controller,
            obscureText: obscureText,
            decoration: InputDecoration(
              prefixIcon: Icon(icon),
              prefixIconColor: Colors.blue,
              hintText: hinttext,
              hintStyle: const TextStyle(
                color: Colors.blueGrey,
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.white),
                borderRadius: BorderRadius.circular(8),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.blue),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}

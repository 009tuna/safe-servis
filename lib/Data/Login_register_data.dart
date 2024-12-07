import 'package:flutter/material.dart';

class Textfield {
  IconData icon;
  bool obscure;
  String hinttext;
  TextEditingController controller;
  String? Function(String?)? validator;

  Textfield(
      {required this.hinttext,
      required this.icon,
      required this.obscure,
      required this.controller,
      required this.validator});
}

List<Textfield> textfield_list = [
  Textfield(
    hinttext: 'Email',
    icon: Icons.mail,
    obscure: false,
    controller: TextEditingController(),
    validator: (value) {
      if (value == null || !value.contains('@gmail.com')) {
        return 'Geçerli bir e-posta adresi girin';
      }
      return null;
    },
  ),
  Textfield(
    hinttext: "Password",
    icon: Icons.lock,
    obscure: true,
    controller: TextEditingController(),
    validator: (value) {
      if (value == null || !value.contains('@gmail.com')) {
        return 'Geçerli bir e-posta adresi girin';
      }
      return null;
    },
  ),
  Textfield(
    hinttext: "R_Name Surname",
    icon: Icons.person,
    obscure: false,
    controller: TextEditingController(),
    validator: (value) {
      if (value == null || !value.contains('@gmail.com')) {
        return 'Geçerli bir e-posta adresi girin';
      }
      return null;
    },
  ),
  Textfield(
    hinttext: "R_Email",
    icon: Icons.email,
    obscure: false,
    controller: TextEditingController(),
    validator: (value) {
      if (value == null || !value.contains('@gmail.com')) {
        return 'Geçerli bir e-posta adresi girin';
      }
      return null;
    },
  ),
  Textfield(
    hinttext: "R_Password",
    icon: Icons.lock,
    obscure: true,
    controller: TextEditingController(),
    validator: (value) {
      if (value == null || !value.contains('@gmail.com')) {
        return 'Geçerli bir e-posta adresi girin';
      }
      return null;
    },
  ),
  Textfield(
    hinttext: "R_Confirm Password",
    icon: Icons.key,
    obscure: true,
    controller: TextEditingController(),
    validator: (value) {
      if (value == null || !value.contains('@gmail.com')) {
        return 'Geçerli bir e-posta adresi girin';
      }
      return null;
    },
  ),
];

import 'package:flutter/material.dart';
import 'package:opening_page/Pages/Login_page.dart';
import 'package:opening_page/Pages/Register_page.dart';

class login_or_register extends StatefulWidget {
  const login_or_register({super.key});

  @override
  State<login_or_register> createState() => _login_or_registerState();
}

class _login_or_registerState extends State<login_or_register> {
  bool showloginpage = true;

  void togglepages() {
    setState(() {
      showloginpage = !showloginpage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showloginpage) {
      return login_page(
        onTap: togglepages,
      );
    } else {
      return register_page(
        onTap: togglepages,
      );
    }
  }
}

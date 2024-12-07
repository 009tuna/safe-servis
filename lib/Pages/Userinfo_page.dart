import 'package:flutter/material.dart';
import 'package:opening_page/Data/userinfo_data.dart';
import 'package:opening_page/Util/my_textfield.dart';

class userinfopage extends StatefulWidget {
  const userinfopage({super.key});

  @override
  State<userinfopage> createState() => _userinfopageState();
}

class _userinfopageState extends State<userinfopage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kullanıcı İşlemleri'),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF090C14),
              Color(0xFF0D1326),
              Color(0xFF1A2740),
              Color(0xFF2E3959),
              Color(0xFF364159),
            ],
            stops: [0.0, 0.5, 0.75, 0.875, 1.0],
          ),
        ),
        child: Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: ListView.builder(
              itemCount: userinfolist.length,
              itemBuilder: (BuildContext context, int index) {
                final info = userinfolist[index];
                return my_textfield(
                    controller: info.Controller,
                    hinttext: info.hinttext,
                    obscureText: false,
                    icon: null);
              },
            ),
          ),
        ),
      ),
    );
  }
}

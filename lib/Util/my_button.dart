import 'package:flutter/material.dart';

class my_button extends StatefulWidget {
  final String text;
  final void Function()? onTap;
  const my_button({super.key, required this.text, this.onTap});

  @override
  State<my_button> createState() => _my_buttonState();
}

class _my_buttonState extends State<my_button> {
  bool ispressed = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onTap!();
      },
      onTapDown: (details) {
        setState(() {
          ispressed = true;
        });
      },
      onTapUp: (details) {
        setState(() {
          ispressed = false;
        });
      },
      onTapCancel: () {
        setState(() {
          ispressed = false;
        });
      },
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 4),
          height: MediaQuery.of(context).size.height / 20,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: ispressed ? Colors.blue[900] : Colors.blue,
              borderRadius: BorderRadius.circular(8)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Text(
                widget.text,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: MediaQuery.of(context).size.width * 0.05),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

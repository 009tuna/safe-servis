import 'package:flutter/material.dart';

class MyUserbuttons extends StatefulWidget {
  final void Function()? onTap;
  final IconData icon;
  final String text;
  const MyUserbuttons(
      {super.key, required this.icon, required this.text, this.onTap});

  @override
  State<MyUserbuttons> createState() => _MyUserbuttonsState();
}

class _MyUserbuttonsState extends State<MyUserbuttons> {
  bool _ispresed = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          widget.onTap!();
        },
        onTapDown: (details) {
          setState(() {
            _ispresed = true;
          });
        },
        onTapUp: (details) {
          setState(() {
            _ispresed = false;
          });
        },
        onTapCancel: () {
          setState(() {
            _ispresed = false;
          });
        },
        child: Container(
          padding: const EdgeInsets.all(10.0),
          height: 50,
          width: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: _ispresed ? Colors.blueGrey : Colors.blue,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    widget.icon,
                    color: Colors.white,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Text(
                      widget.text,
                      style:
                          const TextStyle(color: Colors.white, fontSize: 20.0),
                    ),
                  ),
                ],
              ),
              const Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
              )
            ],
          ),
        ),
      ),
    );
  }
}

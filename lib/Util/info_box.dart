import 'package:flutter/material.dart';

class InfoBox extends StatefulWidget {
  final String title;
 
  
  final void Function()? onTap;

  const InfoBox(
      {super.key,
      required this.title,
      
      
      this.onTap});

  @override
  State<InfoBox> createState() => _InfoBoxState();
}

class _InfoBoxState extends State<InfoBox> {
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
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 100),
          width: MediaQuery.of(context).size.width,
          height: 60,
          padding: const EdgeInsets.all(4),
          decoration: BoxDecoration(
              border: Border.all(color: _ispresed ? Colors.blue : Colors.white),
              borderRadius: BorderRadius.circular(8)),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Center(
                  child: Text(
                    widget.title,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white),
                    overflow: TextOverflow.clip,
                    maxLines: 2,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:opening_page/Data/fromu.dart';

class image_slide extends StatelessWidget {
  final String image;
  const image_slide({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
      fit: BoxFit.cover,
    );
  }
}

class imageslidefunction extends StatefulWidget {
  const imageslidefunction({super.key});

  @override
  State<imageslidefunction> createState() => _imageslidefunctionState();
}

class _imageslidefunctionState extends State<imageslidefunction> {
  int _activeimage = 0;
  Timer? _timer;

  late List<Widget> _images;
  void starttimer() {
    _timer = Timer.periodic(
      const Duration(seconds: 5),
      (timer) {
        if (_pageController.page == fromu.length - 1) {
          _pageController.animateToPage(0,
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeInOut);
        } else {
          _pageController.nextPage(
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeInOut);
        }
      },
    );
  }

  void initState() {
    super.initState();
    _images = List.generate(
      fromu.length,
      (index) => image_slide(image: fromu[index]),
    );
    starttimer();
  }

  void dispose() {
    super.dispose();
    _timer?.cancel();
  }

  final PageController _pageController = PageController(initialPage: 0);
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 220,
            child: PageView.builder(
              controller: _pageController,
              itemCount: fromu.length,
              onPageChanged: (value) {
                setState(() {
                  _activeimage = value;
                });
              },
              itemBuilder: (context, index) {
                return _images[index];
              },
            ),
          ),
          Positioned(
            bottom: 10,
            left: 0,
            right: 0,
            child: Container(
              color: Colors.transparent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List<Widget>.generate(
                  _images.length,
                  (index) => Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: InkWell(
                      onTap: () {
                        _pageController.animateToPage(index,
                            duration: Duration(milliseconds: 200),
                            curve: Curves.easeIn);
                      },
                      child: CircleAvatar(
                        backgroundColor:
                            _activeimage == index ? Colors.blue : Colors.white,
                        radius: 4,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
